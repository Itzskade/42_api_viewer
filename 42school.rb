#!/usr/bin/env ruby

require "bundler/setup"
require "oauth2"
require "dotenv/load"

# ANSI colors
RESET   = "\e[0m"
BOLD    = "\e[1m"
GREEN   = "\e[32m"
RED     = "\e[31m"
CYAN    = "\e[36m"
YELLOW  = "\e[33m"
MAGENTA = "\e[35m"

if ARGV.empty?
  puts "#{YELLOW}Usage:#{RESET} ./42school.rb <login>"
  exit
end

login = ARGV[0]

UID = ENV["UID"]
SECRET = ENV["SECRET"]

if UID.nil? || SECRET.nil?
  puts "#{RED}Error:#{RESET} API42_UID and API42_SECRET must be set as environment variables."
  exit
end

client = OAuth2::Client.new(UID, SECRET, site: "https://api.intra.42.fr")

begin
  token = client.client_credentials.get_token
  projects = token.get("/v2/users/#{login}/projects_users").parsed
rescue OAuth2::Error => e
  abort "#{RED}API error:#{RESET} #{e.message}"
end

validated = projects.select { |p| p["validated?"] == true }
not_validated = projects.select { |p| p["validated?"] == false }

# Header function
def header(title, color)
  puts ""
  puts "#{color}#{'=' * 30}#{RESET}"
  puts "#{BOLD}#{title}#{RESET}"
  puts "#{color}#{'=' * 30}#{RESET}"
end

header("Validated projects", GREEN)

validated.each do |p|
  name = p["project"]["name"]
  mark = p["final_mark"]
  puts "#{GREEN}✔#{RESET} #{BOLD}#{name}#{RESET} — #{CYAN}#{mark}#{RESET}"
end

header("Non‑validated projects", RED)

not_validated.each do |p|
  name = p["project"]["name"]
  mark = p["final_mark"]
  puts "#{RED}✘#{RESET} #{BOLD}#{name}#{RESET} — #{MAGENTA}#{mark}#{RESET}"
end

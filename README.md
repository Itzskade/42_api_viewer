<p align="right">
  <a href="es.README.md">
    <img src="https://img.shields.io/badge/🌐%20Spanish-README-%2312bab9?style=for-the-badge" alt="README Spanish" />
  </a>
</p>

<div align="left">
    <img src='https://img.shields.io/badge/Barcelona-black?style=flat&logo=42&logoColor=white'/>
</div>

# 42 API Project Viewer

A small Ruby script that connects to the 42 Intra API and displays a user's validated and non‑validated projects with colored output.

This tool is simple, lightweight, and easy to run on any system.

---

## 📦 Requirements

You need:

- Ruby 3.3.x (recommended)
```
rbenv install 3.3.10
rbenv local 3.3.10
```
- Bundler 
```
gem install bundler
```
- A `.env` file containing your 42 API UID and SECRET

---

## 🔧 Installation


```bash 
git clone https://github.com/itzksade/42_api.git
cd 42_api
bundle install
```

---

## 🔑 Environment variables

Create a `.env` file in the project folder with the following content:

UID=your_api_uid_here  
SECRET=your_api_secret_here

You can generate these credentials from your 42 profile under [“OAuth Applications”](https://profile.intra.42.fr/oauth/applications)

---

## ▶️ Usage

Run the script using Bundler followed by a 42 login.

```Example usage format:

./42school.rb <login>
```

The script will show:

- ✔ Validated projects (green)
- ✘ Non‑validated projects (red)
- Final marks for each project

---


## 📝 Notes

- The script uses the OAuth2 client_credentials flow  
- Colors work in most terminals (Linux, macOS, WSL)  
- You can make the script executable with chmod +x if you prefer running it directly  

---

## 📜 License

Free to use and modify.

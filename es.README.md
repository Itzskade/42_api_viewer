<p align="right">
  <a href="README.md">
    <img src="https://img.shields.io/badge/🌐%20English-README-%2312bab9?style=for-the-badge" alt="README English" />
  </a>
</p>

<div align="left">
    <img src='https://img.shields.io/badge/Barcelona-black?style=flat&logo=42&logoColor=white'/>
</div>

# Visor de Proyectos de la API de 42

Un pequeño script en Ruby que se conecta a la API de Intra 42 y muestra los proyectos validados y no validados de un usuario con salida en colores.

La herramienta es simple, ligera y fácil de ejecutar en cualquier sistema.

---

## 📦 Requisitos

Necesitas:

- Ruby 3.3.x (recomendado)  
```
rbenv install 3.3.10
rbenv local 3.3.10
```
- Bundler 
```
gem install bundler
```

---

## 🔑 Variables de entorno

Crea un archivo `.env` en la carpeta del proyecto con el siguiente contenido:

UID=tu_uid_de_api  
SECRET=tu_secret_de_api  

Puedes generar estas credenciales desde tu perfil de 42 en la sección [“OAuth Applications”](https://profile.intra.42.fr/oauth/applications).

---

## 🔧 Instalación

```bash 
git clone https://github.com/itzksade/42_api.git
cd 42_api
bundle install
```

---

## ▶️ Uso

Ejecuta el script seguido del login de un usuario de 42.

```Formato de uso:
./42school.rb <login>
```

El script mostrará:

- ✔ Proyectos validados (en verde)  
- ✘ Proyectos no validados (en rojo)  
- Nota final de cada proyecto  

---

## 📝 Notas

- El script usa el flujo OAuth2 client_credentials  
- Los colores funcionan en la mayoría de terminales (Linux, macOS, WSL)  
- Puedes hacerlo ejecutable con chmod +x si prefieres lanzarlo directamente  

---

## 📜 Licencia

Libre para usar y modificar.

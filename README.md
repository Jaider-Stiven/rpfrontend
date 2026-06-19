# FoodExpress - Interfaz Web de Autenticación (Frontend)

Este proyecto corresponde a la interfaz web interactiva (frontend) de **FoodExpress** para probar el registro y el inicio de sesión de los clientes de manera visual. 

Este frontend está completamente separado del backend y se aloja en su propio repositorio de Git.

---

## 🎨 Características de Diseño

- **Alineación Temática:** Diseñado con colores cálidos gastronómicos (naranjas y rojos), tipografía moderna (Outfit) e iconos interactivos de Font Awesome.
- **Glassmorphism:** Tarjeta de autenticación con fondo translúcido y desenfoque de fondo (`backdrop-filter`) sobre una imagen de fondo de comida rápida premium.
- **Modo Oscuro Integrado:** Look oscuro y elegante que resalta los componentes interactivos.
- **Alertas Toast Dinámicas:** Mensajes dinámicos que aparecen en la esquina superior derecha indicando el éxito ("Autenticación satisfactoria") o error del servidor con micro-animaciones de entrada y salida.
- **Transiciones y Animaciones:** Transición suave entre el formulario de inicio de sesión y registro.

---

## 📂 Estructura de Archivos

```text
proyectofoodfront/
├── assets/
│   └── foodexpress_bg.png    # Imagen de fondo temática de comida
├── index.html                # Formulario e interactividad con Javascript
├── style.css                 # Diseño visual, animaciones y responsividad (CSS Vanilla)
├── .gitignore                # Exclusiones de Git
└── README.md                 # Documentación del Frontend
```

---

## 🚀 ¿Cómo Ejecutar y Probar?

1. **Levantar el Servidor Backend:**
   Asegúrate de que la API de `proyectofoodend` esté corriendo en su puerto por defecto (`http://localhost:3000`).
2. **Ejecutar el Frontend:**
   Dado que este frontend está construido con HTML, CSS y JS nativo, no requiere compilarse ni instalar paquetes:
   - Simplemente haz doble clic en el archivo `index.html` para abrirlo directamente en tu navegador web.
   - O puedes abrirlo usando extensiones como *Live Server* en Visual Studio Code.
3. **Interactuar:**
   - Ve a la pestaña **Registrarse**, ingresa un usuario y una contraseña, y presiona **Crear Cuenta**. El sistema enviará la petición al backend y si todo es correcto, guardará los datos e inmediatamente cambiará la interfaz a la pestaña de **Iniciar Sesión**.
   - Ingresa tus credenciales en **Iniciar Sesión** y presiona **Entrar a FoodExpress**.

---

## 🔌 Conexión con la API

Las llamadas fetch de javascript en `index.html` apuntan al servidor local del backend:
- **Registro:** `POST http://localhost:3000/api/register`
- **Login:** `POST http://localhost:3000/api/login`

El servidor backend responde a estas peticiones habilitando **CORS** para evitar bloqueos por seguridad del navegador.

---

## 📁 Control de Versiones (Git)

Este proyecto cuenta con un repositorio Git independiente. Los comandos utilizados fueron:

1. **Inicialización del repositorio:**
   ```bash
   git init
   ```
2. **Commit Inicial del Frontend:**
   ```bash
   git add .
   git commit -m "feat: initial commit for FoodExpress frontend"
   ```

# ==========================================================
# FoodExpress Frontend - Nginx sirviendo el sitio estático
# ==========================================================
FROM nginx:1.27-alpine

# Configuración de Nginx (sirve el sitio y hace proxy de /api)
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Archivos del sitio
COPY index.html /usr/share/nginx/html/index.html
COPY style.css /usr/share/nginx/html/style.css
COPY assets /usr/share/nginx/html/assets

EXPOSE 80

HEALTHCHECK --interval=30s --timeout=3s --retries=3 \
    CMD wget -q --spider http://127.0.0.1/ || exit 1

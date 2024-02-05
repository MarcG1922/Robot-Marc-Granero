#!/bin/sh
noticias="https://www.elmundotoday.com/"
archivo_html="elmundotoday.html"
# Verificación de wget ( tambien se puede utilizar curl si no te funciona)
if ! command -v wget &> /dev/null; then
    echo "wget no está instalado. Instalando..."
    apt-get update
    apt-get install -y wget 
else
    echo "El comando wget ya está instalado"
fi 
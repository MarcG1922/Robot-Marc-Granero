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

# Descarga del sitio web elegido (obtención del "index.html") mediante wget
wget -O "$archivo_html" "$noticias"

# Reemplazar caracteres codificados
iconv -f ISO-8859-1 -t UTF-8 "$archivo_html" > "$archivo_html.tmp" && mv "$archivo_html.tmp" "$archivo_html"
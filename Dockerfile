# Image base oficial de Python
FROM python:3.11-slim 
# Carpeta de trabajo dentro del contenedor
WORKDIR /app
# Copiar archivos al contenedor
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

COPY . .

# Comando para ejecutar la app
CMD ["python" , "app.py"]

#cambio x
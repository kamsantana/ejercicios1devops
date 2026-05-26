#paso1: utilizamos una imagen  base oficil del python
FROM python:3.12-slim 
#paso2:establecemos el directorio de trabajo dentro del contenedor
WORKDIR /app

#paso3:copiamos  el requeriments.txt
COPY requirements.txt /app

#pas4:instalar las dependencias 
RUN  pip install -r requirements.txt

#paso5:copiamos  los archivos del proyecto al contenedor
COPY . /app
 #paso6: ejecutamos la aplicacion 
 CMD ["python","app.py"]
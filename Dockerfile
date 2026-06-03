# Usa la versión específica de Node.js indicada en los prerrequisitos (ligera basada en Alpine)
FROM node:18.15.0-alpine

# Establece el directorio de trabajo dentro del contenedor
WORKDIR /app

# Copia los archivos de dependencias
COPY package*.json ./

# Instala las dependencias
RUN npm install

# Copia el resto del código fuente de la aplicación
COPY . .

# Por seguridad, usamos el usuario sin privilegios de Node
USER node

# Expone el puerto que usa tu servidor
EXPOSE 8000

# Comando para iniciar la aplicación según el README
CMD ["npm", "run", "start"]
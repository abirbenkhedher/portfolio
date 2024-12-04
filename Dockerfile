# Utiliser une image Node.js officielle
FROM node:18

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier tout le contenu du projet dans le conteneur
COPY . .

# Exposer le port utilisé par Nuxt.js
EXPOSE 3000

# Commande pour démarrer le serveur de développement
CMD ["npm", "run", "dev"]

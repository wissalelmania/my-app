
# 1. Utiliser une image de base avec Node.js
FROM node:22-alpine

# 2. Définir le dossier de travail dans le conteneur
WORKDIR /my-app

# 3. Copier le code de l'application
COPY app.js .

# 4. Indiquer le port utilisé par l'application
EXPOSE 3000

# 5. Définir la commande de démarrage
CMD ["node", "app.js"]

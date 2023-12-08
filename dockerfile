# Utiliser l'image officielle nginx
FROM nginx:stable-alpine3.17-slim

# Installer git
RUN apt-get update && apt-get install -y git

# Créer un répertoire pour cloner le projet
WORKDIR /usr/share/nginx/html

# Cloner le repo depuis la branche gh-pages
RUN git clone --branch gh-pages https://github.com/JohanHagnere/CIGitHub.git .

# Exposer le port 80
EXPOSE 80

# Commande pour lancer le serveur nginx en arrière-plan
CMD ["nginx", "-g", "daemon off;"]

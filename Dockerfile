# Utiliser l'image officielle Python 3.14 slim
FROM python:3.14-slim

# Définir le répertoire de travail dans le conteneur
WORKDIR /app

# Copier le fichier des dépendances et installer
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt

# Copier tout le projet dans le conteneur
COPY . .

# Exposer le port 5000 pour Flask
EXPOSE 5000

# Lancer l'application Flask
CMD ["python", "app.py"]
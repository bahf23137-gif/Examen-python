from flask import Flask, jsonify

# Créer l'application Flask
app = Flask(__name__)

# Définir la route de la page d'accueil
@app.route("/")
def home():
    # On retourne un message JSON simple
    return jsonify({"message": "Bienvenue dans la page d'accueil de l'examen"})

# Lancer l'application
if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000, debug=True)
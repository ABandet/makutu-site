# Variables
ID1=55997
ID2=1063534
JSON_FILE=data/hal_publications.json

.PHONY: update build serve

# Étape 1 : Télécharger les données
update:
	@echo "📥 Mise à jour des données HAL..."
	@mkdir -p data
	@curl -L -s -o $(JSON_FILE) "https://api.archives-ouvertes.fr/search/?q=structId_i:$(ID1)+OR+structId_i:$(ID2)&wt=json&rows=1500&fl=title_s,authFullName_s,producedDateY_i,journalTitle_s,uri_s,docType_s,files_s&sort=producedDateY_i+desc"
	@echo "✅ Données prêtes."

# Étape 2 : Construire le site
build: update
	@echo "🏗️ Construction du site Hugo..."
	hugo --gc --minify

# Étape 3 : Lancer le serveur local avec mise à jour
serve: update
	hugo server --disableFastRender

# Prototype cliquable KEYZz × PRESSIAT

Prototype statique autonome du parcours KEYZz PRESSIAT.

## Lancer en local sur macOS

1. Double-cliquer sur `Lancer prototype.command`.
2. Si macOS bloque le fichier : clic droit → **Ouvrir** → confirmer.

## Interactions disponibles

- Les trois cartes de contenu ouvrent leurs fenêtres de détail.
- `En savoir plus sur KEYZz` ouvre l’overlay générique de présentation.
- Les boutons de fermeture reviennent à la Landing.
- Parcours principal : Landing → Connexion → Code → Nom → Paiement → Traitement → Révélation → Partage.
- La barre inférieure permet de changer d’écran et de tester les branches : salle d’attente, paiement refusé et édition épuisée.

## Déployer sur Vercel

1. Placer le contenu de ce dossier à la racine d’un dépôt GitHub.
2. Importer le dépôt dans Vercel.
3. Framework Preset : **Other**.
4. Ne renseigner aucune commande de build.
5. Conserver le dossier de sortie vide ou `.`.
6. Déployer.

Vercel sert automatiquement `index.html`.

## Déployer sur GitHub Pages

Dans le dépôt GitHub : **Settings → Pages → Deploy from a branch**, puis sélectionner la branche principale et le dossier `/ (root)`.

## Ressources

Toutes les images, y compris le logo et les portraits, sont intégrées directement dans `index.html`. Aucun dossier d’assets ni installation npm n’est nécessaire.

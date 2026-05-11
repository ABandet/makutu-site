# Modifying Core Pages

## The Home Page (Index)

The content displayed on the homepage is largely controlled by the site's configuration file, `hugo.toml`. 

To modify the text on the main screen:
1. Open `hugo.toml` in the root directory.
2. Locate the `[params.home.profile]` section.
3. Modify the `subtitle` to change the typing effect text. Currently, it is set to `"Modeling and simulation of wave propagation"`.
4. To change the site logo, modify the `logo` and `icon` paths under `[params.header.title]` and `[params.app]`.

## The About Page

In `hugo.toml`, the main menu links the "About" (English) and "À propos" (French) tabs to the URLs `/team/` and `/fr/team/` respectively.

To modify the text on these pages:
1. Navigate to the `content/team/` directory (if it does not exist, create it).
2. Edit `_index.md` to change the English "About" content.
3. Edit `_index.fr.md` to change the French "À propos" content.

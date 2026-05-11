# Managing News

The site supports bilingual news articles. All news content lives in the `content/news/` directory.

## Adding a News Article

For every news post, you should create two Markdown files sharing the same base name, one for English (`.md`) and one for French (`.fr.md`).

1. **Create the Files**: In `content/news/`, create `my-event.md` and `my-event.fr.md`.
2. **Configure the Frontmatter**: At the top of both files, include the TOML frontmatter:

**English (`my-event.md`)**
```toml
+++
date = '2026-05-11T10:00:00+02:00'
draft = false 
title = 'My New Event'
+++
Write your English content here.
```

**French (`my-event.fr.md`)**
```toml
+++
date = '2026-05-11T10:00:00+02:00'
draft = false
title = 'Mon Nouvel Événement'
+++
Écrivez votre contenu en français ici.
```

### Frontmatter Fields Explained:
* **`title`**: The headline of the news article.
* **`date`**: Used to sort the news chronologically. Ensure it follows the format `YYYY-MM-DDThh:mm:ss+TZ`.
* **`draft`**: Set to `true` if you are still working on it and don't want it published yet. Set to `false` to make it live.

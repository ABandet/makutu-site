# Technical Architecture

This document is intended for future developers managing the Hugo theme and build processes.

## Data & HAL Integration
The site dynamically loads publication data from HAL.
* **Makefile**: The `make update` command uses `curl` to fetch JSON data from the HAL API based on specific `structId_i` codes (55997 and 1063534). It outputs `data/hal_publications.json`.
* **Publications Layout**: The custom `layouts/section/publications.html` script parses this JSON file using `{{ $data := .Site.Data.hal_publications }}`. It sorts publications into categories like "Articles & Preprints" based on HAL's `docType_s` property (e.g., `ART`, `UNDEFINED`, `THESE`). 
* **Partials**: Individual publication rows are rendered by `layouts/partials/pub-item.html`, which formats the title, authors, journal, and links to the HAL URI and PDF.

## Custom Layouts
* **Members (`layouts/section/members.html`)**: Instead of standard pagination, this layout iterates through the English site (`{{ $enSite := index .Sites 0 }}`) to build a unified hierarchy of categories (`$membersSection.Sections.ByWeight`). It then renders the `$lang`-specific job roles dynamically.
* **CSS Styles**: Custom grids for members (`.team-grid`) and custom CSS for the collapsible `<details>` tags in the publications are defined in `static/css/style.css` and injected locally within the publication layout.

## Archetypes

This project uses specific archetypes to standardize content creation:
* **`archetypes/default.md`**: The standard fallback.
* **`archetypes/members.md`**: Automatically generates the YAML frontmatter required for a team member (`role_en`, `role_fr`, `weight`, `image`, `externalLink`).
* **`archetypes/news.md`**: Automatically generates the TOML frontmatter required for news articles (`date`, `draft`, `title`).

When you use the `hugo new` command, Hugo automatically matches the top-level directory name (`members` or `news`) to the corresponding archetype file.

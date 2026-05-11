# Makutu Website Repository

Welcome to the source code repository for the Makutu research team website. This site is built using the [Hugo](https://gohugo.io/) static site generator and the LoveIt theme. 

## Quick Start (Local Development)

To run the site locally, you can use the provided Makefile. It handles downloading the latest publication data from HAL and starting the Hugo server:

```bash
# This will fetch HAL data and start the local server at http://localhost:1313
make serve
```

To build the static files for production, use:
```bash
make build
```

Note that every modification on the main branch of this repository will update the [website site](www.makutu.fr).

## Documentation

If you need to update the website, please refer to the guides in the `doc/` directory:

* [Managing Members](doc/01-members.md) - How to add or edit team members and categories.
* [Managing News](doc/02-news.md) - How to post bilingual news articles.
* [Modifying Core Pages](doc/03-pages.md) - How to update the Home and About pages.
* [Technical Architecture](doc/04-technical.md) - Details on layouts, archetypes, and HAL integration for developers.
* [GitHub Web Workflow](doc/05-workflow-github.md) - How to update the site directly from your browser.
* [Git CLI Workflow](doc/06-workflow-git.md) - How to update the site using your local terminal (Windows/macOS/Linux).

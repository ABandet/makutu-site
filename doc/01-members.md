# Managing Members

The team members section is categorized into several groups (e.g., Head, Permanent, PostDocs, PhDs, Engineers, Interns, Alumni, and Externals). Hugo uses "Page Bundles" for members, meaning each member gets their own folder containing an `index.md` file and their profile image.

## Adding a New Team Member

1. **Create the Folder**: Navigate to `content/members/` and choose the appropriate category (e.g., `content/members/phd/`). Create a new folder with the member's name formatted in lowercase with hyphens (e.g., `john-doe`).
2. **Add the Profile Image**: Place a square image (preferably named `avatar.jpg` or `avatar.png`) inside this new folder. 
3. **Create the `index.md` File**: Create an `index.md` file next to the image with the following frontmatter:

```yaml
---
title: "John Doe"
role_en: "PhD Student"
role_fr: "Doctorant"
weight: 10
image: "avatar.jpg"
externalLink: "[https://orcid.org/](https://orcid.org/)..." # Optional: Leave empty ("") if none
---
```

### Frontmatter Fields Explained:
* **`title`**: The member's full name.
* **`role_en` & `role_fr`**: The bilingual job titles. The site's layout (`layouts/section/members.html`) automatically fetches the correct language string based on the user's current locale.
* **`weight`**: Determines the sorting order. Lower numbers appear first. For example, a weight of `1` will place the member at the top of their category, while `10` places them lower.
* **`externalLink`**: Clicking the member's card will redirect to this URL. If omitted, it links to the page itself (though individual member pages aren't heavily styled by default).

## Adding a New Category

1. Create a new folder under `content/members/` (e.g., `content/members/visiting/`).
2. Inside it, create two files: `_index.md` (English) and `_index.fr.md` (French).
3. Add the following frontmatter to `_index.md`:
   ```yaml
   ---
   title: "Visiting Researchers"
   weight: 6
   ---
   ```
4. Add the following frontmatter to `_index.fr.md`:
   ```yaml
   ---
   title: "Chercheurs invités"
   weight: 6
   ---
   ```
   *Note: The `weight` dictates the order in which the category blocks appear on the main `/members/` page.*

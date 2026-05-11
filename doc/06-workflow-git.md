# Editing via Local Git Workflow

This guide covers the traditional development workflow using a command-line interface. These steps are standard across **Windows (Git Bash/PowerShell)**, **macOS (Terminal)**, and **Linux (Bash)**.

## 1. Initial Setup
Clone the repository to your local machine:
```bash
git clone https://github.com/ABandet/makutu-site makutu-site
cd makutu-site
```

## 2. Make Your Changes
It's best practice to create a new branch for your work:
```bash
# Create and switch to a new branch
git checkout -b update-john-doe-profile
```
Edit the markdown files, update images, or create new folders using your preferred text editor (like VS Code). 

**To create new content, use Hugo's built-in archetype generators:**

**For a New Member:**
Since members are Page Bundles (a folder containing an `index.md`), run this command:
```bash
hugo new members/phd/john-doe/index.md
```
This automatically creates the folder and populates `index.md` with the correct YAML fields. Just remember to add their `avatar.jpg` to the newly created folder!

**For a New News Article:**
You need to create both the English and French files. Run:
```bash
hugo new news/my-new-event.md
hugo new news/my-new-event.fr.md
```
This automatically generates both files with the correct TOML frontmatter and the current date/time.

You can preview your changes locally using:
```bash
make serve
```

## 3. Commit and Push
Once you are happy with the changes, stage and commit them:
```bash
# Stage all changes
git add .

# Commit with a descriptive message
git commit -m "Update John Doe profile picture and role"

# Push the branch to GitHub
git push origin update-john-doe-profile
```

## 4. Create a Pull Request
1. Go to the repository on GitHub.
2. You will see a prompt saying your branch had recent pushes. Click "Compare & pull request".
3. Review your changes and click "Create pull request".
4. Once approved by another team member (or yourself, depending on repo settings), merge the PR into the `main` branch.

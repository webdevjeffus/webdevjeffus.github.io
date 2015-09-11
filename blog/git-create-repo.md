# Creating a new Repo on GitHub

*Note: This walk-through assumes has an account on GitHub, has git installed on his computer, and knows how to use the terminal. Doesn't everyone?*

1. Go to your profile page on GitHub. Click the **Create New ( + )** dropdown menu at the top right of the page, and click **New Repository**"
2. On the New Repo page, enter the following information:
  - **Repository name** (needs to be both short and descriptive)
  - **Description** (Keep it to 50 characters)
  - Click the **Public** radio button
  - Check the checkbox to include a **README** file
  - Choose a **License** from the dropdown menu (for DBC projects, choose the MIT license)
3. Click **Create Repository**. GitHub will create the repo and navigate to its page automatically.
4. At the lower right-hand corner of the repo page, click **Copy to Clipboard** to copy the URL for the new remote repo on GitHub.
5. Open your terminal. Navigate to the directory you intend to be the *parent directory* for the new local repo.
6. Enter: **git clone [PASTE_URL_FROM_CLIPBOARD]**
7. From the parent directory, enter **ls** to be sure the new repo is present.
8. If the repo is there, enter **cd [REPO-NAME]** to move to the repo directory.
9. In the repo directory, the branch name ("master" to begin with) should appear inside brackets ( **[ ]** ) as the final information in the terminal prompt. That's how you know you're working inside a git repository.



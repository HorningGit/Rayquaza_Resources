# :earth_americas: _Source Control Management_ :earth_africa:

<!--General SCM-->
### :banana: General SCM Information
Source control (or version control) is the process of managing changes to a codebaase. SCM systems provide a real-time log of code development. Here are the benefits of a Source Control Management systems:
- Tracking Code Changes
- View Revision History
- Revert to Previous Commits
- And Many More!

```mermaid
flowchart LR
  A[Working Directory]-->B[Staging Area]-->C[Respository]
```

1. **Working Directory**
    - Addition of Code
    - Modification of Code
    - Deletion of Code
2. **Staging Area**
    - Files Ready for Commit
3. **Repository**
    - Changes are Finalized into the Repository

###### :alien: Basic Git Workflow
```mermaid
graph LR
  A[Branch Creation]-->B[Commit]-->C[Pull Request]-->D[Review]-->E[Merge & Delete]-->A
```
###### :alien: Git Branching
```mermaid
gitGraph
  commit id: "1"
  commit id: "2"
  branch branch_example
  commit id: "b_1"
  checkout main
  commit id: "3"
```
###### :alien: Git Merging
```mermaid
gitGraph
  commit id: "1"
  commit id: "2"
  branch merge_example
  checkout merge_example
  commit id: "b_1"
  commit id: "b_2"
  checkout main
  merge merge_example
  commit id: "3"
  commit id: "4"
```


___
<!--Git vs GitHub-->
##### :orange: Git vs. GitHub
Many times new admins/developers will conflate Git and GitHub. While they are similar sounding, their technologies are drastically different.

**Git** is a free and open source version control system that is locally installed. It is primarily used via command line in order to achieve the benefits listed above (see General SCM Info). **GitHub** is rather a cloud-based distributed version-control platform where developers can utilize **Git** to upload to.

___
<!--Cheat Sheet-->
## :computer: Git & GitHub :computer:
### :notebook: Setup
##### :yellow_circle: Setting up Git & GitHub CLI
 - Git (Downloads): https://git-scm.com/downloads
 - GitHub CLI: https://cli.github.com/manual/

Install Git via the following command (RHEL-based Systems)
```bash
$ sudo dnf install git-all
```

Install GitHub CLI via the following commands (RHEL-based Systems)
```bash
$ sudo dnf install 'dnf-command(config-manager)'
$ sudo dnf config-manager --add-repo https://cli.github.com/packages/rpm/gh-cli.repo
$ sudo dnf install gh
```


After installing GitHub CLI, run the following command to authenticate with your GitHub account:
```bash
$ gh auth login
```

##### :orange_circle: Initializing & Cloning Repositories







##### :red_circle: Staging & Snapshots

##### :purple_circle: Branching & Merging

##### :large_blue_circle: Sharing & Updating
- Adding a Git URL to an Alias
```
$ git remote add [alias] [url]
```
- Fetch all branches from a remote repository
```
$ git fetch [alias]
```
- Merge the remote branch to the current branch for updating
```
$ git merge [alias]/[branch]
```
- Send the local branch commits to the remote repository branch
```
$ git push [alias] [branch]
```

##### :green_circle: Monitoring
- Display commit history for current branch:
```
$ git log
```
- Display commits on _BranchA_ that are not on _BranchB_
```
$ git log BranchB..BranchA
```
- Display the difference of what is in _BranchA_ that is not in _BranchB_
```
$ git log BranchB...BranchA
```

# Practical exercise on data analysis

In this practical, you will perform multiple steps needed on working environment setup for reproducible data analysis using the code versioning system `git`, systems environment management `renv` and `RMarkdown` to create reproducible documents.

## Requirements

* [Github](https://github.com) account
* R and RStudio or [RStudio Cloud](https://rstudio.cloud) account

## Step 1: Create your R project

1. Start RStudio or login to the [RStudio Cloud](https://rstudio.cloud)
2. Select "New Project" -> "New Project form Git Repository"

    <img src='./misc/img/Rstudio-cloud_new-project.png' width=500>

3. Enter the URL of the repository from github classroom, something like  (`https://github.com/elixir-training-luxembourg/project-setup-<githubusername>`) and hit OK

    <img src='./misc/img/Rstudio-cloud_repository-url.png' width=300>

    After a while, you should see Rstudio IDE environment with your project.<br>
    <img src='./misc/img/Rstudio.png' width=500>

## Step 2: Restore your computational environment

1. Inspect the `renv.lock` file for the whole list of required packages. As you can see, it would be very laborious to install all those packages manually.

   <img src='./misc/img/renv-lock-content.png' width=300>

2. Install all packages by running command

   ```r
   renv::restore()
   ```

   in the **console** tab and confirm. Doing so ensures computational environment is always the same - for different users on different machines.

## Step 3: Git

1. Inspect the **Git** tab and see the list of changes.

   <img src='./misc/img/git_changes-none.png' width=300>

2. Open the `first-paper.Rmd` file and update list of authors in the first section - add your name ;) - and save it.

    <img src='./misc/img/git_modify.png' width=300>

3. File should appear in **Git** tab list. The blue icon means it was modified. Stage the changes for this file by checking the checkbox in `Stage` column.

    <img src='./misc/img/git_stage.png' width=300>

4. Commit the change by clicking on `Commit`. You are prompted to review your changes. Add commit message and hit `commit`.

   <img src='./misc/img/git_commit.png' width=300>

5. The file is no more listed in **Git** tab - naturally! All the changes of the file are commited.

   <img src='./misc/img/git_history.png' width=300>

6. Inspect history of the repository. Your commit should be the first. Inspect the metadata available for your commit - commit message, your name, date and commit hash (unique identifier).

At this moment, you might want to push your changes to the remote repository (Github) to make it available for others. This is not covered in this practical.

## Literate programming

1. Open the `first-paper.Rmd` file and hit `Knit`.

   <img src='./misc/img/rmarkdown_knit.png' width=300>

2. Review the resulting html file. Update the content of the RMarkdown document. You can add new code chunks, update the text or add new pieces of code available in `R/analysis-code.R` file.
3. Knit the document again.

## Final Assignement 
Download the generated `.html` file and sent it to the trainer.

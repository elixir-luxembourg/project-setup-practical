# Practical exercise on data analysis

In this practical, you will perform multiple steps needed on working environment setup for reproducible data analysis using the code versioning system `git`, systems environment management `renv` and `RMarkdown` to create reproducible documents.

## Requirements

-   R and RStudio or [Posit Cloud](https://rstudio.cloud) account

## Step 1: Create your R project

1.  Start RStudio or login to the [Posit Cloud](https://rstudio.cloud)
2.  Select "New Project" -\> "New RStudio Project"

<img src="./misc/img/Rstudio-cloud_new-project.png" width="500"/>

After a while, you should see Rstudio IDE environment with your project.

<img src="./misc/img/Rstudio.png" width="500"/>

3.  To set up git versioning for your project click on "Tools \> Version Control \> Project setup".

<img src="./misc/img/git_tools.png" width="500"/>

In the following window under Git/SVN for version control system select Git and save the change.

<img src="./misc/img/git_project-options.png" width="500"/>

## Step 2: Create your computational environment

1.  Your data analysis will require multiple packages. To use `renv` first run `install.packages("renv")` in the **console**. To start collecting the list of used packages in the project library initialize `renv` by running `renv::init()`.

2.  Install packages as you go. They will be automatically written in the \*\*renv.lock\*\* file for you. The renv.lock ensures computational environment is always the same - for different users on different machines.

<img src="./misc/img/renv-lock-content.png" width="500"/>

The project environment and all used packages will be installed in any other system by running the `renv::restore()` in the **console** tab.

## Step 3: Create project directory structure

1.  In your project directory make 2 directories called **data** and **R**.

2.  **Data** directory is where your ChiP-seq data should be placed.

## Step 4: Git

1.  Inspect the **Git** tab and see the list of changes.

<img src="./misc/img/git_changes-none.png" width="300"/>

2.  Create the `first-paper.qmd` file. Copy the content of the first-paper.qmd from the given repository link into this file and save it. The file should appear in **Git** tab list.

<img src="./misc/img/git_add.png" width="300"/>

3.  Stage the changes for this file by checking the checkbox in `Stage` column. The green icon means it was added.

<img src="./misc/img/git_stage_add.png" width="300"/>

4.  Commit the addition of this file by clicking on `Commit`. You are prompted to review your changes. Add commit message and hit `commit`.

<img src="./misc/img/git_commit_add.png" width="300"/>

The file is no more listed in **Git** tab - naturally! It was commited.

5.  Update the list of authors in the first section - add your name ;) - and save it.

6.  Repeat the previous two steps. Stage the change of the file. The blue icon means it was modified.

<img src="./misc/img/git_modify.png" width="300"/>

Now commit the change. You are prompted to review your changes. Add a commit message and hit commit.

<img src="./misc/img/git_commit_change.png" width="300"/>

7.  Inspect history of the repository. Your commits should be the first. Inspect the metadata available for your commit - commit message, your name, date and commit hash (unique identifier).

<img src="./misc/img/git_history.png" width="300"/>

At this moment, you might want to push your changes to the remote repository (Github) to make it available for others. This is not covered in this practical.

## Literate programming

1.  Open the `first-paper.qmd` file saved in your project and hit `Knit`.

<img src="./misc/img/quatro_knit.png" width="300"/>

2.  Review the resulting html file. Update the content of the Quarto document.

    -   Switch the output format to Word

    -   Describe the statistics of the length of the peaks in a table

    -   Discuss the distribution of signal values and p values

    -   Include a citation

        You can add new code chunks, update the text or add new pieces of code available in `R/analysis-code.R` file.

3.  Knit the document again.

## Final Assignment

Download the generated `.docx` file and sent it to the trainer.

<a href="https://www.openintro.org/"><img src="man/figures/data_hunter.png" align="right" height="170"></a>

# Welcome to the data_hunters!
------------------------------
Our role is to collect and cultivate supplemental data sets for use in the `openintro` or `usdata` R packages associated with the OpenIntro textbooks. 

*If you have an ORCID please [email it to me](mailto:nick@openintro.org) so that it can be included in your credits.

*Be sure to add data sets that are ready to the appropriate tab on the Google Sheets file that we went over during our initial meeting.

# Contributing 
--------------
We will follow the process for adding new data outlined below and modified from the `openintro` package.

If you are a better visual learner, there is a screencast linked at the bottom of this page.
 
The following steps use the **devtools** and **usethis** packages for
various steps. We recommend using this process when suggesting new
datasets to be added to the package. If the dataset is large (&gt;500MB)
or you’d like to add a function, please open an issue first for
discussion before making the pull request.

1.  Fork and clone the repo with
    `usethis::create_from_github("npaterno/data_hunters", fork = TRUE)`
2.  Start a new pull request with `usethis::pr_init("BRANCH-NAME")`,
    where `BRANCH-NAME` is an informative branch name.
3.  If adding a file that is not an .rda file to begin with (Excel, csv,
    etc.), create a folder in the `data-raw` folder with the name of the
    dataset (how you’d like it to show up in the package). Please use
    `snake_case` for naming, e.g. `name_of_dataset`.
4.  Place your dataset in its raw form in the folder.
5.  Also in the `data-raw` folder, create a new R script called
    `name_of_dataset-dataprep.R` and write the code needed to read in
    the file, make any modifications to the data that are needed (if
    any), and end with `usethis::use_data()` to save the data in the
    package as an .rda file with the ideal compression. See examples
    from other folders in `data-raw` for sample code. The contents of
    this folder do not end up in the package (the entire folder is
    ignored in the `.Rbuildignore`) so you don’t need to worry about
    adding package dependencies etc.
6.  In the `R` folder, create an R script called `data-name_of_dataset`
    and add documentation using Roxygen style. See other documentation
    files for help with style. In the examples, use tidyverse syntax but
    do not use `library(tidyverse)` and only use the relevant packages,
    e.g. `library(dplyr)`, `library(ggplot2)`.
7.  Restart R and run `devtools::load_all()` to make sure the data loads
    and run your examples to confirm they all work.
8.  Run `devtools::document()`, restart R, and then
    `devtools::load_all()`. Then, check out `?name_of_dataset` to make
    sure the documentation looks as expected.
9.  Run `devtools::check()`. The only NOTE you should see as a result of
    the check should be about the package size. If any other ERRORs,
    NOTEs, or WARNINGs are generated, resolve them or open an issue for
    help.
10. Commit the changes made in the git tab of RStudio.
11. Run `usethis::pr_push()` to submit the pull request. This will open a new tab in your browser with a pull request form filled out in GitHub. Submit the request by pressing the green "Create pull request" button. After the request had been merged, run `usethis::pr_finish()`.
12. Please DO NOT edit the description or namespace files.

# Getting GitHub and RStudio to Sync
------------------------------------

If you are new to GitHub and RStudio, this section will help you get them synced/talking to each other. There are instructions for Windows and Mac users. If you are a Linux user, please [contact me](mailto:nick@openintro.org) for help; for the most part you can follow the Mac instructions but getting RTools to install is different from Mac and can even vary between Linux distributions. 

If you are a better visual learner, there are screencasts linked at the bottom of this page. 

Before proceeding, make sure you have your GitHub username and the email you use to login handy.

1. Setting Up Git Credentials

    A. Open the Command Prompt (Windows) or Terminal (Mac). Run each command below sequentially. 
    
        i. git config --global user.name "your_github_user_name"
        
        ii. git config --global user.email "email_for_github_login"
        
        iii. git config --list 
        
            a. This command will confirm that the first two commands ran correctly.
            
    B. Open RStudio and run the code below in the Console. 
    
        i. (optional) If not installed, run install.packages(c("devtools", "usethis"))
        
        ii. usethis::create_github_token()
        
            a. This will open a web browser and create a Personal Access
            Token (PAT) for your GitHub account. Copy this token. 
            
        iii. gitcreds::gitcreds_set()
        
            a. Paste the PAT when prompted
            
        iv. gh::gh_whoami()
        
            a. This will show your username, email and confirm the token saved correctly. 
            
2. Installing RTools

    A. Mac 
    
        i. Open Terminal and run the command below.
        
            a. xcode-select --install
            
    B. Windows
    
        i. Go to the RTools website (https://cran.r-project.org/bin/windows/rtools).
        
        ii. Install the x-86 version of RTools
        
        iii. Open RStudio and run the code below in the Console.
        
            a. writeLines('PATH = "${RTOOLS40_HOME}\\usr\\bin; ${PATH}" ', con = "~/.Renviron")
            
    C. Mac \& Windows
    
        i. Open RStudio and run the code below in the Console to confirm that your system is ready to build packages.
        
            a. pkgbuild::check_build_tools()


# For those without experience using R and/or GitHub
----------------------------------------------------

If you would like to learn how to use R and/or GitHub, please send me an [email](mailto:nick@openintro.org). 

If you would like to contribute without learning R or GitHub, please [email](mailto:nick@openintro.org) your data sets in csv format. Please include the source of the data. 

# Video Resources
-----------------

1. [Syncing GitHub & RStudio: Mac Edition](https://youtu.be/yfCe39JKBTE)
2. [Syncing GitHub & RStudio: Windows Edition](https://youtu.be/lHz-r2lJ2o8)
3. [Contributing Data](https://youtu.be/MJGCELK0jSc)


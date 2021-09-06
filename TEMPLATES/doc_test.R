# Documenting and Testing New Datasets --------------------------------------------------

# After you have imported/cleaned the data (TEMPLATES/data_set_name-dataprep.R) and 
# written the documentation file (TEMPLATES/data-data_set_name.R) you can run the code in
# this script file to document and test your data. 

# Documenting New Datasets --------------------------------------------------------------

# Step 1: Restart R using keyboard shortcuts or the code below.
## Windows: ctrl-shift-F10
## Mac: cmd-shift-F10

# Step 2: Load the package
devtools::load_all()

# Step 3: Document
devtools::document()

# Step 4: Restart R

# Step 5: Check the help file by replacing name_of_dataset with the name of the new data.
?name_of_dataset

# If you don't get any errors and everything looks as it should, proceed to testing. 

# Testing New Datasets ------------------------------------------------------------------

# Step 1: Restart R

# Step 2: Load the package
devtools::load_all()

# Step 3: Test the package
devtools::check()

# The only NOTE you should see as a result of the check should be about the package size. 
# If any other ERRORs, NOTEs, or WARNINGs are generated, resolve them or open an issue for
# help.
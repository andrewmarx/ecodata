# Try running the ecodata() without any arguments. You'll get some information
# about valid options for the first parameter.
data <- ecodata::ecodata()

# Note that the function returns NULL at this point
print(data)

# Repeat this process until we get data
data <- ecodata::ecodata("Quantitative Ecology")

# Instead of NULl this time, we get the information that was printed out. It may
# or many not be useful to store in a variable for later reference without having
# to run the function again.
head(data)

# Repeat this process until we get data
data <- ecodata::ecodata("Quantitative Ecology", "Distributions")
head(data)
data <- ecodata::ecodata("Quantitative Ecology", "Distributions", "Normal Random Sets")
head(data)

# This particular data set is actually dynamically generated. This means that
# running it again should produce different results.
data <- ecodata::ecodata("Quantitative Ecology", "Distributions", "Normal Random Sets")
head(data)

# Try running the ecodata() without any arguments. You'll get some information
# about valid options for the first parameter.
data <- ecodata::ecodata()

# Note that the function returns NULL at this point
print(data)

# Repeat this process until we get data
data <- ecodata::ecodata("Quantitative Ecology")
data <- ecodata::ecodata("Quantitative Ecology", "Normal Distribution")
data <- ecodata::ecodata("Quantitative Ecology", "Normal Distribution", "Normal Random Sets")
head(data)

# This particular data set is actually dynamically generated. This means that
# running it again should produce different results.
data <- ecodata::ecodata("Quantitative Ecology", "Normal Distribution", "Normal Random Sets")
head(data)

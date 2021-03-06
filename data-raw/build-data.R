library(usethis)

# Data files
._datafiles <- c()
for (f in list.files("data-raw/data", "^[a-z][a-z0-9_]*[a-z0-9]\\.csv$")) {
  name = sub(pattern = "\\.csv$", "", f)
  ._datafiles = c(._datafiles, name)
  data = read.csv(paste0("data-raw/data/", f), skip = 5, stringsAsFactors = FALSE, na.strings = "")
  assign(name, data)
  do.call("use_data", list(as.name(name), overwrite = TRUE))
}

# Internal data
._subdisciplines <- read.csv("data-raw/_subdisciplines.csv", stringsAsFactors = FALSE)
._topics <- read.csv("data-raw/_topics.csv", stringsAsFactors = FALSE)
._st_pivot <- read.csv("data-raw/_st_pivot.csv", stringsAsFactors = FALSE)
._td_pivot <- read.csv("data-raw/_td_pivot.csv", stringsAsFactors = FALSE)

use_data(._datafiles,
         ._subdisciplines,
         ._topics,
         ._st_pivot,
         ._td_pivot,
         internal = TRUE, overwrite = TRUE)

cm_lib <- "/usr/local/lib/R/library"
cm_repo <- "https://cloud.r-project.org"

install.packages(c("repr", "evaluate", "IRdisplay", "pbdZMQ",
	"crayon", "jsonlite", "uuid"), lib = cm_lib, repo = cm_repo)

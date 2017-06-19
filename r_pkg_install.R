cm_lib <- "/usr/local/lib/R/library"
cm_repo <- "https://cloud.r-project.org"

install.packages(c("tidyverse", "plyr", "data.table", "cowplot",
	"devtools", "RcppArmadillo", "forecast", "caret", "caretEnsemble",
	"kernlab", "randomForest", "xgboost", "glmnet", "e1071",
	"rstan", "RPostgreSQL"), lib = cm_lib, repo = cm_repo)

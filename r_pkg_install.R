cm_repo <- "https://cloud.r-project.org"

install.packages(c("tidyverse", "plyr", "data.table", "cowplot",
	"devtools", "RcppArmadillo", "forecast", "caret", "caretEnsemble",
	"kernlab", "randomForest", "xgboost", "glmnet", "e1071",
	"rstan", "RPostgreSQL", "rjags"), repo = cm_repo)

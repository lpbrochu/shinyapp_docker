# install.packages("pacman")
# library(pacman)
#
# pacman::p_load(shiny, ggplot2, rsconnect)
list.of.packages <- c("shiny", "rsconnect")


new.packages <- list.of.packages[!(list.of.packages %in% installed.packages()[,"Package"])]
if(length(new.packages))
    install.packages(new.packages, repos = "http://lib.stat.cmu.edu/R/CRAN", dependencies = TRUE)


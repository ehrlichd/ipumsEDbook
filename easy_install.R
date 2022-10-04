## List of common packages used in development/coursework

pkgs_to_install <- c("devtools",
                     "tidyverse",
                     "rmarkdown",
                     "bookdown",
                     "rgl",
                     "ipumsr")

new_pkgs <- pkgs_to_install[!pkgs_to_install %in% installed.packages()]

for(ppp in pkgs_to_install){
  if(!require(ppp)){
    install.packages(ppp)
  }
}

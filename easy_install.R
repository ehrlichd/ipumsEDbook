## List of common packages used in development/coursework

pkgs_to_install <- c("devtools",
                     "tidyverse",
                     "tinytex",
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

## you will also likely need to manually download and install Rtools from:
#### MAC: https://cran.rstudio.com/bin/macosx/tools/
#### Windows: https://cran.rstudio.com/bin/windows/Rtools/

## you will most likely need to download/update a version of LaTeX, a language
## for compiling pdfs. We installed the R-package tinytex above, but that package
## just contains an installer. To actually update your latex library run

tinytex::install_tinytex()

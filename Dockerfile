# Use rocker/rstudio base image
FROM rocker/rstudio:4.4.2

# Install remotes
RUN R -e "install.packages(c('remotes'), repos = 'https://cran.rstudio.com')"

# Install pinned version of ggplot2
RUN R -e "remotes::install_version('ggplot2', version = '3.5.1', repos = 'https://cran.rstudio.com')"

RUN R -e "packageVersion('ggplot2')"

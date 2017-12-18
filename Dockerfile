FROM rocker/r-base:latest

#adds server.R, ui.R, and source files to project directory
ADD . /

#loads necessary packages
RUN Rscript install_packages.R

CMD ["Rscript", "/deploy.R"]
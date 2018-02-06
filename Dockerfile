FROM quay.io/hemberg-group/scrna-seq-course-base:latest

# install R packages
RUN echo 'source("https://bioconductor.org/biocLite.R")' > /opt/packages2.r && \
    echo 'biocLite()' >> /opt/packages2.r && \
    echo 'biocLite(c("limma", "SingleCellExperiment", "Rhdf5lib", "beachmat", "scater", "scran", "RUVSeq", "sva", "SC3", "TSCAN", "monocle", "destiny", "DESeq2", "edgeR", "MAST", "scfind", "scmap", "MultiAssayExperiment", "SummarizedExperiment"))' >> /opt/packages2.r && \
    Rscript /opt/packages2.r

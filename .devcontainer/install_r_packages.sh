#!/usr/bin/env bash
set -e

# CRANパッケージをまとめてインストール
Rscript -e "install.packages(c(
    'tidyverse',
    'DT',
    'jsonlite',
    'devtools',
    'collapsibleTree',
    'igraph',
    'colorspace'
), repos='https://cloud.r-project.org/')"

# GitHubパッケージをインストール
Rscript -e "library(devtools); install_github('UTNAK/tansakusuR')"
Rscript -e "library(devtools); install_github('UTNAK/omlhashiR')"



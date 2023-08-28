library(usethis)
library(archive)
library(xml2)
library(readtext)
library(dplyr)
library(tidyr)
library(readxl)
library(janitor)

url <- "https://storage.googleapis.com/sgw-extras/zip/2021/978-3-030-53953-5.zip"
zip <- gsub(".*/", "dev/", url)

if (!file.exists(zip)) {
  download.file(url, zip)
}

if (!file.exists("dev/Data Sets")) {
  archive_extract(zip, dir = "dev/")

  zip2 <- "dev/Data Sets.zip"

  archive_extract(zip2, dir = "dev/")
}

# CIGAR ----

cigar <- readtext("dev/Data Sets/cigar.doc") %>%
  select(text) %>%
  pull()

cigar <- strsplit(cigar, "\n")[[1]]

cigar <- tibble(r = cigar) %>%
  separate(
    r,
    into = c("state", "year", "price", "population", "population_16", "cpi", "ndi", "sales", "pimin"),
    sep = "\\s+"
  ) %>%
  mutate_if(is.character, as.numeric) %>%
  mutate(
    state = as.integer(state),
    year = as.integer(year),
    population = as.integer(population),
    population_16 = as.integer(population_16),
    ndi = as.integer(ndi)
  )

use_data(cigar, overwrite = TRUE)

# GASOLINE ---- 

gasoline <- readtext("dev/Data Sets/Gasoline.doc") %>%
  select(text) %>%
  pull()

gasoline <- strsplit(gasoline, "\n")[[1]] %>%
  tibble(r = .) %>%
  separate(
    r,
    into = c("country", "year", "lgaspcar", "lincomep", "lrpmg", "lcarpcap"),
    sep = "\\s+"
  ) %>%
  filter(row_number() > 1) %>%
  mutate(
    country = as.factor(country),
    year = as.integer(year),
    lgaspcar = as.numeric(lgaspcar),
    lincomep = as.numeric(lincomep),
    lrpmg = as.numeric(lrpmg),
    lcarpcap = as.numeric(lcarpcap)
  )

use_data(gasoline, overwrite = TRUE)

# GRUNFELD ----

grunfeld <- readtext("dev/Data Sets/Grunfeld.doc") %>%
  select(text) %>%
  pull()

grunfeld <- strsplit(grunfeld, "\n")[[1]] %>%
  tibble(r = .) %>%
  separate(
    r,
    into = c("firm", "year", "investment", "value", "capital"),
    sep = "\\s+"
  ) %>%
  mutate(
    firm = as.integer(firm),
    year = as.integer(year),
    investment = as.numeric(investment),
    value = as.numeric(value),
    capital = as.numeric(capital)
  )

use_data(grunfeld, overwrite = TRUE)

# HEDONIC ----

hedonic <- read_excel("dev/Data Sets/Hedonic.xls", range = "B1:P507") %>%
  clean_names() %>%
  mutate(
    chas = as.integer(chas),
    tax = as.integer(tax)
  )

use_data(hedonic, overwrite = TRUE)

# PRODUC ----

produc <- readtext("dev/Data Sets/produc.doc") %>%
  select(text) %>%
  pull()

produc <- strsplit(produc, "\n")[[1]]

produc <- produc[3:length(produc)]

produc <- gsub("^\\s+|\\s+$", "", produc)

produc <- produc %>%
  tibble(r = .) %>%
  separate(
    r,
    into = c("state", "st_abb", "year", "pub_cap", "hwy", "water", "util", "priv", "gsp", "emp", "unemp"),
    sep = "\\s+"
  ) %>%
  mutate(
    state = as.factor(state),
    st_abb = as.factor(st_abb),
    year = as.integer(year),
    pub_cap = as.integer(pub_cap),
    hwy = as.integer(hwy),
    water = as.integer(water),
    util = as.integer(util),
    priv = as.integer(priv),
    gsp = as.integer(gsp),
    emp = as.integer(emp),
    unemp = as.numeric(unemp)
  )

use_data(produc, overwrite = TRUE)

# WAGES ----

wages <- read_excel("dev/Data Sets/WAGES.xls", range = "A1:L4166") %>%
  clean_names() %>%
  mutate(
    exp = as.integer(exp),
    wks = as.integer(wks),
    occ = as.integer(occ),
    ind = as.integer(ind),
    south = as.integer(south),
    smsa = as.integer(smsa),
    ms = as.integer(ms),
    fem = as.integer(fem),
    union = as.integer(union),
    ed = as.integer(ed),
    blk = as.integer(blk)
  )

use_data(wages, overwrite = TRUE)

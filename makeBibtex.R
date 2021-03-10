
Sys.getenv("ORCID_TOKEN")

my_dois <- rorcid::identifiers(rorcid::works("0000-0001-5097-9163"))
pubs <- rcrossref::cr_cn(dois = my_dois, format = "bibtex")

pubs <- rorcid::orcid_citations("0000-0001-5097-9163")

writeLines(pubs$citation, "test.bib")

invisible(lapply(pubs, write, "pubs.bib.updated", append=TRUE))

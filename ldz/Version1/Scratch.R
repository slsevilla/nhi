reg_original <- read.csv("C:\\Users\\slsevilla\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Director of Registrar\\Expected_StudentDemo.csv", header=TRUE)

sud.data <- reg_original[c("FNAME", "MNAME", "LNAME", "CELL", "P1.CELL", "P2.CELL", "arrival_airport", "arrival_time", "arrival_carrier")]

colnames(reg_original)

n <- nrow(reg_original)
n

temptable <- reg_original
temptable

temptable2 <- data.frame(x=1:n)
temptable2$MNAME<- temptable$MED.FORM
temptable2 <- subset(temptable2,select=-c(MNAME))
temptable2$x <- lapply (temptable2$x, gsub, pattern = "2", replacement = "A", fixed=TRUE)
temptable2

templist <- temptable2$x
templist

staff <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\National Staff.csv", header=TRUE)
fin <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Director of Merchandise\\MerchandiseLedger.csv", header=TRUE)

test <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\test.csv", header=TRUE)
nom <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Nomination_final.csv", header=TRUE)
reg <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Registrar_StudentDB_Elections.csv", header=TRUE)
elect <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Election_CommishReport.csv", header=TRUE)
elect2 <- read.csv("C:\\Users\\slsevilla\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Election_WinnerFillIn.csv", header=TRUE)
voting$NAME <- as.character(voting$NAME)

ftc <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Protocol_FormingTheCommunityTemplate.csv", header=TRUE)


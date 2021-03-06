reg_original <- read.csv("C:\\Users\\sevillas2\\Google Drive\\MyDocuments_Current\\Programs & Orgs\\National Hispanic Institute\\2019_NationalLDZ\\Director Guides\\Downloaded Files\\Registrar_StudentEB_Expected.csv", header=TRUE)

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

for (row in 1:nrow(reg_original)){
  print(row)
  print(reg_original[row,"Voter"])
  reg_original[row,"VoterID"]<-sample(1:100000, 1)
}


staff <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\National Staff.csv", header=TRUE)
fin <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Director of Merchandise\\MerchandiseLedger.csv", header=TRUE)

test <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\test.csv", header=TRUE)
nom <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Nomination_final.csv", header=TRUE)
elect <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Election_CommishReport.csv", header=TRUE)
elect2 <- read.csv("C:\\Users\\slsevilla\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Election_PartyNomFillIn.csv", header=TRUE)
voting$NAME <- as.character(voting$NAME)

ftc <- read.csv("C:\\Users\\sevillas2\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\Template National LDZ\\Director Guides\\Downloaded Files\\Protocol_FormingTheCommunityTemplate.csv", header=TRUE)

reg <- read.csv("C:\\Users\\slsevilla\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\2018 National LDZ\\Director Guides\\Downloaded Files\\Registrar_StudentDB_Elections.csv", header=TRUE)
points <- read.csv("C:\\Users\\slsevilla\\Google Drive\\My Documents\\Programs & Orgs\\National Hispanic Institute\\2018 National LDZ\\Director Guides\\Downloaded Files\\2018_LiveProposal - House Proposal Log (1).csv", header=TRUE)

elect_winners <- read.csv("C:\\Users\\sevillas2\\Downloads\\Elections - Results.csv")
elect_winners<-elect_winners[c("FNAME", "MNAME", "LNAME", "CITY", "ST_NAME", "DORM", "ROOM", "VOTERID", "SENATE",
                               "SENATE_WIN","SUPREME.JUSTICE", "SUPREME.JUSTICE_WIN","VP", "VP_WIN", "ATTORNEY_WIN",
                               "PRES","PRES_WIN")]
elect_special <- read.csv("C:\\Users\\sevillas2\\Downloads\\Elections - Special.csv")
elect_special<-elect_special[c("FNAME", "MNAME", "LNAME", "VOTERID", "HorS_Clerk",	"HorS_Srgt",
   "HorS_Majority", "HorS_Minor", "ChiefNominees",	"Cabinet",	"SpeakerOfHouse",
   "HorS_Chair","SpeakerProTemp")]

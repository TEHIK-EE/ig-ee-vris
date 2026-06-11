Profile: EEVRISDonor
Parent: EEBasePatient
Id: ee-vris-donor
Title: "Patient: EE VRIS Donor"
Description: "For use of donors. (ee Doonori profiil, kasutamiseks KA anonüümsete ja välismaiste doonorite puhul.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    ExtensionEEVRISCellOriginRole named role 0..1 and
    $birth-place named birthPlace 0..1 and
    $citizenship named citizenship 0..1
* identifier ^short = "Anonymous donor identifier? (ee Anonüümse doonori identifikaator?)"
* identifier.type ^short = "(ee Kas kasutada doonorite puhul DR Donor registration numberit eristamaks teistest??)"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "Doonori identifikaator tüübi järgi"
* identifier contains
    knownDonor 0..1 and
    foreignDonor 0..1 and
    anonymousDonor 0..1

* identifier[knownDonor] ^short = "Teadaolev doonor – Eesti isikukood"
* identifier[knownDonor].system = "https://fhir.ee/sid/pid/est/ni" (exactly)
* identifier[knownDonor].system ^short = "Eesti isikukoodi süsteem"
* identifier[knownDonor].value 1..1
* identifier[knownDonor].value ^short = "Eesti isikukood (11-kohaline)"

* identifier[foreignDonor] ^short = "Välismaa doonor passinumber (vm)"
* identifier[foreignDonor].system from $patient-identifier-domain-VS (required)
* identifier[foreignDonor].system ^short = "Välismaa passi identifikaatori süsteem (nt https://fhir.ee/sid/pid/fin/ppn)"
* identifier[foreignDonor].value 1..1
* identifier[foreignDonor].value ^short = "Passinumber, id kaart vm identifikaator plus riigi uri"

* identifier[anonymousDonor] ^short = "Anonüümne doonor kliinikuosisene identifikaator. NB! allolevat system uri pole olemas, vaja luua?"
* identifier[anonymousDonor].system = "https://fhir.ee/sid/pid/est/dr" (exactly) //sellist pole veel olemas!
* identifier[anonymousDonor].system ^short = "Doonorite registreerimise number"
* identifier[anonymousDonor].value 1..1
* identifier[anonymousDonor].value ^short = "Doonori registreerimisnumber"
* name 0..*
* name ^short = "Name of Donor if known. (ee Doonori nimi)"
* gender ^short = "Sex"
* deceased[x] ^short = "(ee Surnud (boolean) ja surmaaeg. Surma põhjus on eraldi observation.)"
* link ^short = "(ee NB! Seosed MPI kirje ja suhete vahel)"
* link.other only Reference($mpi-patient or EEVRISRelatedPerson)
//* link ^slicing.discriminator.type = #value

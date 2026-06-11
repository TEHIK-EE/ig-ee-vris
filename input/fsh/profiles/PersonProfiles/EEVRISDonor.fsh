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
* identifier ^short = "Identifier for donor (ee DOONORIKOOD)"
* identifier.type ^short = "(ee Kas kasutada doonorite puhul DR Donor registration numberit eristamaks teistest??)"
* identifier ^slicing.discriminator.type = #value
* identifier ^slicing.discriminator.path = "system"
* identifier ^slicing.rules = #open
* identifier ^slicing.ordered = false
* identifier ^slicing.description = "(ee Doonori identifikaator tüübi järgi)"
* identifier contains
    knownDonor 0..1 and
    foreignDonor 0..1 and
    anonymousDonor 0..1 and
    ircc 0..* 

* identifier[knownDonor] ^short = "(ee Teadaolev doonor Eesti isikukood)"
* identifier[knownDonor].system = "https://fhir.ee/sid/pid/est/ni" (exactly)
* identifier[knownDonor].system ^short = "(ee Eesti isikukoodi süsteem, vt MPI)"
* identifier[knownDonor].value 1..1
* identifier[knownDonor].value ^short = "(ee Eesti isikukood (11-kohaline))"

* identifier[foreignDonor] ^short = "(ee Välismaa doonor passinumber (vm identifikaator))"
* identifier[foreignDonor].system from $patient-identifier-domain-VS (required)
* identifier[foreignDonor].system ^short = "(ee Välismaa identifikaatori süsteem (nt https://fhir.ee/sid/pid/fin/ppn))"
* identifier[foreignDonor].value 1..1
* identifier[foreignDonor].value ^short = "(ee Passinumber, id kaart vm identifikaator plus riigi uri)"

* identifier[anonymousDonor] ^short = "(ee Anonüümne doonor kliinikusisene identifikaator. NB! allolevat system uri pole olemas, vaja luua?)"
* identifier[anonymousDonor].system = "https://fhir.ee/sid/pid/est/dr" (exactly) //sellist pole veel olemas!
* identifier[anonymousDonor].system ^short = "(ee Doonorite registreerimise süsteemi uri"
* identifier[anonymousDonor].value 1..1
* identifier[anonymousDonor].value ^short = "(ee Doonori registreerimisnumber)"

* identifier[ircc] ^short = "IRCC Individual Reproductive Care Code (sellist system uri EI ole, vaja LUUA?)"
* identifier[ircc].system = "https://fhir.ee/sid/pid/est/ircc" (exactly)
* identifier[ircc].system ^short = "(ee IRCC identifikaatori süsteem)"
* identifier[ircc].value 1..1
* identifier[ircc].value ^short = "(ee IRCC kood)"

* name 0..*
* name ^short = "Name if known. (ee Doonori nimi, kui on teada)"
* birthDate 0..1
* birthDate.extension.valueAge ^short = "(ee Vanus)"
* birthDate.extension.valueAge 1..1
* gender ^short = "Sex (ee Sugu)"
* maritalStatus ^short = "(ee Perekonnaseis. Rahvastikuregistri loend?)"
* deceased[x] ^short = "(ee Surnud (boolean) ja surmaaeg. Surma põhjus on eraldi observation.)"
* link ^short = "(ee NB! Seosed MPI kirje ja suhete vahel)"
* link.other only Reference($mpi-patient or EEVRISRelatedPerson)
//* link ^slicing.discriminator.type = #value

Profile: EEVRISPatientAnonymous
Parent: EEMPIPatientUnknown
Id: ee-vris-patient-anonymous
Title: "Patient: EE VRIS Anonymous Patient"
Description: "Anonymous donor in the Estonian VRIS fertility system. (ee Anonüümne (välismaa) doonor VRIS-is.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    $nationality named nationality 0..1
* extension[nationality] ^short = "ee RAHVUS"
* identifier ^short = "(ee Anonüümse patsiendi identifikaator, MR number või kliinikusisene kood)"
* name[nickname].text ^short = "(ee Anonüümse patsiendi hüüdnimi või kirjeldus)"
* gender ^short = "Sex (ee Sugu kohustuslik)"
//* maritalStatus 1..1
//* maritalStatus ^short = "(ee Perekonnaseis)"
* birthDate.extension.valueAge 1..1
* birthDate.extension ^short = "(ee Vanus)"
* birthDate.value ^short = "(ee Sünniaeg, ei ole kohustuslik.)"
* address.country 1..1
* address ^short = "ee RIIK on kohustuslik"
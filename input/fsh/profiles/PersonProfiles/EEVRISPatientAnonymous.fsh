Profile: EEVRISDonorAnonymous
Parent: EEMPIPatientUnknown
Id: ee-vris-donor-anonymous
Title: "Patient: EE VRIS Anonymous Patient"
Description: "Anonymous donor in the Estonian VRIS fertility system. (ee Anonüümne (välismaa) doonor VRIS-is.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    ExtensionEEVRISCellOriginRole named role 0..1 and
    $nationality named nationality 0..1 and
    $additional-identifier named additionalIdentifier 0..*
* extension[nationality] ^short = "(ee RAHVUS)"
* extension[additionalIdentifier] ^short = "(ee Kui on vaja rohkem kui 1 identifikaatorit)"
* identifier ^short = "(ee Anonüümse patsiendi identifikaator, MR number või kliinikusisene kood)"
* name[nickname].text ^short = "(ee Anonüümse patsiendi hüüdnimi või kirjeldus. KAS selle võiks süsteem ise täita?)"
* gender ^short = "Sex (ee Sugu kohustuslik)"
//* maritalStatus 1..1
//* maritalStatus ^short = "(ee Perekonnaseis)"
* birthDate.extension[age].valueAge 1..1
* birthDate.extension[age] ^short = "(ee Vanus on kohustuslik)"
* birthDate.value ^short = "(ee Sünniaeg, ei ole kohustuslik.)"
* address.country 1..1
* address ^short = "ee RIIK on kohustuslik"
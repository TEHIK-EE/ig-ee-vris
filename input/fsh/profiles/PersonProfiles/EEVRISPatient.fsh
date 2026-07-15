Profile: EEVRISPatient
Parent: Patient
Id: ee-vris-patient-lite
Title: "Patient: EE VRIS Patient"
Description: "VRIS patient profile. (ee VRIS patsiendi profiil. Roll modifierExtension'ina ning link viitab MPI ametlikule patsiendikirjele.)"
* extension contains
    ExtensionEEVRISRole named role 1..1 and
    $birth-place named birthPlace 0..1 and
    $nationality named nationality 0..1 and
    ExtensionEEVRISBirthSex named birthSex 0..1 and
    ExtensionEEVRISRelatedClinic named relatedClinic 0..1
* extension[role] ^short = "(ee Patsiendi roll VRIS-is: retsipient / doonor / partner / anonüümne doonor / säilitaja. Mõjutab andmete tõlgendamist ja privaatsust!)"
* identifier 0..*
* identifier ^short = "(ee Kohalik VRIS identifikaator. Ametlikud isikuandmed pärinevad MPI-st läbi link.other viite.)"
* active 0..1
* name 0..*
* name ^short = "(ee Kui vajalik lühiviide, muidu ametlik nimi tuleb MPI-st)"
* gender 0..1
* birthDate 0..1
* link 1..*
* link.other only Reference($mpi-patient or $mpi-patient-unknown)
* link.other ^short = "(ee Kohustuslik viide MPI ametlikule patsiendikirjele. Kõik ametlikud isikuandmed pärinevad sealt.)"
* link.type 1..1
* link.type = #refer
* link.type ^short = "(ee Fikseeritud: #refer, kuna VRIS Patient viitab MPI ametlikule kirjele)"
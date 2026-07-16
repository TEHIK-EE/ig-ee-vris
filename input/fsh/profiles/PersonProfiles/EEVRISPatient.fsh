Profile: EEVRISPatient
Parent: Patient
Id: ee-vris-patient-universal
Title: "Patient: EE VRIS Patient"
Description: "VRIS patient profile. (ee VRIS patsiendi profiil. Roll modifierExtension'ina ning link viitab MPI ametlikule patsiendikirjele.)"
* extension contains
    ExtensionEEVRISRole named role 1..* and
    $birth-place named birthPlace 0..1 and
    $nationality named nationality 0..1 and
    ExtensionEEVRISBirthSex named birthSex 0..1
    //ExtensionEEVRISRelatedClinic named relatedClinic 0..1 NB! SELLE katab ära ManagingOrganization
* extension[role] ^short = "(ee Patsiendi roll VRIS-is: retsipient / doonor / partner / anonüümne doonor / säilitaja. Mõjutab andmete tõlgendamist ja privaatsust!)"
* identifier 0..*
* identifier ^short = "(ee Kohalik VRIS identifikaator. Ametlikud isikuandmed pärinevad MPI-st läbi link.other viite.)"
* active 0..1
* name 0..*
* name ^short = "(ee Kui vajalik lühiviide, muidu ametlik nimi tuleb MPI-st)"
* gender 0..1
* birthDate 0..1
* managingOrganization ^short = "(ee Siia tuleb viide, millise konkreetse asutuse/kliinikuga on patsient seotud. See asutus saab rohkem andmeid näha patsiendi kohta!)"
//* link 1..*
//* link.other only Reference($mpi-patient or $mpi-patient-unknown)
* link.other ^short = "(ee Kohustuslik viide MPI ametlikule patsiendikirjele. Kõik ametlikud isikuandmed pärinevad sealt.)"
//* link.type 1..1
* link.type = #refer
* link.type ^short = "(ee Fikseeritud: #refer, kuna VRIS Patient viitab MPI ametlikule kirjele)"
* link 1..*
* link ^slicing.discriminator.type = #profile
* link ^slicing.discriminator.path = "other.resolve()"
* link ^slicing.rules = #open
* link ^slicing.description = "(ee Slicing MPI profiili tüübi järgi)"

* link contains
    verifiedPatient 0..1 and
    unknownPatient 0..1

* link[verifiedPatient].other only Reference(EEMPIPatientVerified)
* link[verifiedPatient].other ^short = "(ee Viide MPI verified patsiendile retsipient, partner, säilitaja)"
* link[verifiedPatient].type = #refer

* link[unknownPatient].other only Reference(EEMPIPatientUnknown)
* link[unknownPatient].other ^short = "(ee Viide MPI unknown patsiendile, ainult ANONÜÜMNE doonor)"
* link[unknownPatient].type = #refer

// Invariant: at least one link required
* obeys vris-patient-1

Invariant: vris-patient-1
Description: "At least one link (verified or unknown) must be present"
Severity: #error
Expression: "link.exists()"

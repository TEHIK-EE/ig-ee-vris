Profile: EEVRISDonor
Parent: EEBasePatient
Id: ee-vris-donor
Title: "Patient: EE VRIS Donor"
Description: "For use of donors. (ee Doonori profiil, kasutamiseks KA anonüümsete doonorite puhul.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    ExtensionEEVRISCellOriginRole named role 0..1 and
    $birth-place named birthPlace 0..1 and
    $citizenship named citizenship 0..1
* identifier ^short = "Anonymous donor identifier? (ee Anonüümse doonori identifikaator?)"
* identifier.type ^short = "(ee Kas kasutada doonorite puhul DR Donor registration numberit eristamaks teistest??)"
* name 0..*
* name ^short = "Name of Donor if known. (ee Doonori nimi)"
* gender ^short = "Sex"
* link ^short = "(ee NB! Seosed MPI kirje ja suhete vahel)"
* link.other only Reference($mpi-patient or EEVRISRelatedPerson)
//* link ^slicing.discriminator.type = #value

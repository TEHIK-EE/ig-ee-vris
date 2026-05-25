Profile: EEVRISDonor
Parent: EEBasePatient
Id: ee-vris-donor
Title: "Patient: EE VRIS Donor"
Description: "For use of donors. (ee Doonori profiil, kasutamiseks ka anonüümsete doonorite puhul.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    ExtensionEEVRISCellOriginRole named role 0..1
* identifier ^short = "Anonymous donor identifier? (ee Anonüümse doonori identifikaator?)"
* name 0..*
* name ^short = "Name of Donor if known. (ee Doonori nimi)"
* gender ^short = "Sex"
* link ^short = "(ee NB! SIIA TULEB LINK MPI PATSIENDILE)"
* link.other only Reference($mpi-patient)

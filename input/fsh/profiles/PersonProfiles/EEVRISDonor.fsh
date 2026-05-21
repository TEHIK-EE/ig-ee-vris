Profile: EEVRISDonor
Parent: EEBasePatient
Id: ee-vris-donor
Title: "EE VRIS Patient"
Description: "For use of donors. (ee Doonori profiil, kasutamiseks ka anonüümsete doonorite puhul.)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "Sex"
* link ^short = "(ee NB! SIIA TULEB LINK MPI PATSIENDILE)"
* link.other only Reference($mpi-patient)

Profile: EEVRISDonorOfCell
Parent: EEMPIPatient
Id: ee-vris-donor-of-cell
Title: "EE MPI Patient Donor"
Description: "For use of patients"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "Sex"
//* maritalStatus 0..1

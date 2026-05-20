Profile: EEVRISPatient
Parent: EEMPIPatient
Id: ee-vris-patient
Title: "EE VRIS Patient"
Description: "For use of donors and recievers"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "Sex"
* link ^short = "(ee siia )"

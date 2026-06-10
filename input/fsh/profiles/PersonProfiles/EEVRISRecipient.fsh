Profile: EEVRISRecipient
Parent: EEMPIPatient
Id: ee-vris-recipient
Title: "Patient: EE VRIS Recipient"
Description: "For use of patients who recieve care and are recipients of biologic material. Also pertners of recipients use this profile. (ee retsipienti profiil. NB! alati MPI-s registreeritud. NB! Ka partner on retsipient?)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "Sex"
//* maritalStatus 0..1
* link ^short = "(ee Selle kaudu suhted)"
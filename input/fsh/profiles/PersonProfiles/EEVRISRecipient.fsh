Profile: EEVRISRecipient
Parent: EEMPIPatient
Id: ee-vris-recipient
Title: "EE VRIS Recipient"
Description: "For use of patients who recieve care and are recipients of biologic material. (ee Retsiipienti profiil. NB! alati MPI-s registreeritud)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "Sex"
//* maritalStatus 0..1

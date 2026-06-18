Profile: EEVRISRecipient or $mpi-patient
Parent: EEMPIPatientVerified
Id: ee-vris-recipient
Title: "Patient: EE VRIS Recipient"
Description: "For use of patients who recieve care and are recipients of biologic material. (ee retsipienti profiil. NB! alati MPI-s registreeritud. NB! Kas partner on retsipient?)"
* ^status = #draft
* ^publisher = "HL7 Estonia"
* extension contains
    $birth-place named birthPlace 0..1 and
    $nationality named nationality 0..1 and
    ExtensionEEVRISBirthSex named birthSex 0..1
* name 1..*
* name[official] 1.. 
* name[official] ^short = "Official name"
* gender ^short = "(ee Sugu. VÕIB erineda sünnisoost!)"
* birthDate.extension[age].valueAge 1..1
* birthDate.extension[age] ^short = "(ee Vanus on kohustuslik)"
//* maritalStatus 0..1
//* link ^short = "(ee Selle kaudu suhted)"
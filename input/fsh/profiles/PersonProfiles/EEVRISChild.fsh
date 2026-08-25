Profile: EEVRISPatientChild
Parent: EEMPIPatientVerified
Id: ee-vris-patient-child
Title: "Patient: EE VRIS Child"
Description: "Child born from VRIS fertility treatment. (ee VRIS viljatusravi tulemusena sündinud laps. ISIKUKOOD teada!)"
* ^status = #draft

* extension contains
    $birth-place named birthPlace 0..1
* extension[birthPlace] ^short = "(ee Lapse sünniriik / sünnikoht)"

* identifier ^short = "(ee Lapse isikukood RR-st)"
* gender 1..1
* gender ^short = "(ee Lapse sugu)"
* birthDate 0..1
* deceasedDateTime ^short = "(ee Lapse surma kuupäev, Surmaregistrist)"

//* link 0..*
//* link.other only Reference(EEVRISRecipient)
//* link.other ^short = "(ee Viide ema retsipiendile)"
//* link.type = #seealso
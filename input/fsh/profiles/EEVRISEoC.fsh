Profile: EEVRISEpisodeOfCare
Parent: EpisodeOfCare
Id: ee-vris-episode-of-care
Title: "EpisodeOfCare: EE VRIS Episode of Care"
Description: "Episode of care profile for VRIS fertility treatment. Groups related encounters, procedures and observations within a longer treatment period. (ee Viljatusravi episood ühendab ravitsükli piires toimuvad visiidid, protseduurid ja vaatlused. NB! Tulevikus viidata Encounter-Episode teenusele!)"
* ^status = #draft

* identifier 0..*
* identifier ^short = "(ee Episoodi identifikaator)"

* type 0..*
* type ^short = "(ee Episoodi tüüp, nt viljatusravi tsükkel)"

* patient 1..1
* patient only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous or $mpi-patient or EEVRISPatientChild)

* managingOrganization 0..1
* managingOrganization only Reference(Organization)
* managingOrganization ^short = "(ee Vastutav organisatsioon, viide SPD-le)"

* period 0..1
* period ^short = "(ee Episoodi periood: algus ja lõpp)"

* careManager 0..1
* careManager ^short = "(ee Vastutav arst, viide SPD-le)"

* reason 0..*
* reason ^short = "(ee Episoodi põhjus, nt viljatuse näidustus)"
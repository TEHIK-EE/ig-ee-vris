Profile: EEVRISProcedureDestruction
Parent: EEVRISProcedure
Id: ee-vris-procedure-destruction
Title: "Procedure: EE VRIS Destruction"
Description: "Profile for destruction of biological material (sperm, oocyte, embryo, reproductive tissue). (ee Bioloogilise materjali hävitamise protseduur.)"
* ^status = #draft

* category 1..1
* category = $vris-procedure-category#destruction
* category ^short = "(ee Fix kood: hävitamine. NB! Loendit pole veel!)"

* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISRecipient or EEVRISDonorAnonymous)
* subject ^short = "(ee Kelle materjal hävitati)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Hävitamise kuupäev, kohustuslik)"

* reason 1..*
* reason from $vris-destruction-reason-VS (preferred)
* reason ^short = "(ee Hävitamise põhjus, kohustuslik. LOEND puudu!)"

* used 1..*
* used ^short = "(ee Viide hävitatud bioloogilisele materjalile)"
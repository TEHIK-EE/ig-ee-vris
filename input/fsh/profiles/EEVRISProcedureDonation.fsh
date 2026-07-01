Profile: EEVRISProcedureDonation
Parent: EEVRISProcedure
Id: ee-vris-procedure-donation
Title: "Procedure: EE VRIS Donation"
Description: "Profile for donation of biological material (sperm, oocyte, reproductive tissue). (ee Bioloogilise materjali annetamise protseduur. KAS seda on vaja?)"
* ^status = #draft

* category 1..1
* category = $vris-procedure-category#donation
* category ^short = "(ee Fix kood: hävitamine. NB! Loendit POLE veel! Kunstlik kood hetkel!)"

* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISRecipient or EEVRISDonorAnonymous)
* subject ^short = "(ee Kes annetas)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Annetamise kuupäev, kohustuslik)"

* reason 1..*
//* reason from $vris-destruction-reason-VS (preferred)
* reason ^short = "(ee Annetamise põhjus, kohustuslik. LOEND puudu!)"

* used 1..*
* used ^short = "(ee Viide annetatud bioloogilisele materjalile)"
* used only CodeableReference(EEVRISSperm or EEVRISEmbryo or EEVRISOocyte)
Profile: EEVRISProcedureDonation
Parent: EEVRISProcedure
Id: ee-vris-procedure-donation
Title: "Procedure: EE VRIS Donation"
Description: "Profile for donation of biological material (sperm, oocyte, reproductive tissue). (ee Bioloogilise materjali annetamise protseduur. KAS seda on vaja?)"
* ^status = #draft

* category 0..1
* category = $vris-procedure-category#donation
* category ^short = "(ee Fix kood: hävitamine. NB! Loendit POLE veel! Kunstlik kood hetkel!)"

* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Kes annetas)"

* occurrence[x] 0..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Annetamise kuupäev, kohustuslik)"

* reason 0..*
* reason ^short = "(ee Annetamise põhjus, kohustuslik. LOEND puudu!)"

* used 0..*
* used ^short = "(ee Viide annetatud bioloogilisele materjalile)"
* used only CodeableReference(EEVRISSperm or EEVRISEmbryo or EEVRISOocyte or EEVRISReproductiveTissue)
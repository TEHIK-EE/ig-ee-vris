Profile: EEVRISProcedureAllocation
Parent: EEVRISProcedure
Id: ee-vris-procedure-allocation
Title: "Procedure: EE VRIS Allocation"
Description: "Profile for allocation of biological material (sperm, oocyte, embryo reproductive tissue). (ee Bioloogilise materjali broneerimise protseduur. Kasutada juhul kui annetatud bioloogiline materjal on kindlale retsipiendidle broneeritud.)"
* ^status = #draft

* status ^short = "(ee SIIN on KOHUSTUSLIK staatuste loend!)" // required: preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|unknown

* category 0..1
* category = $vris-procedure-category#allocation
* category ^short = "(ee Fix kood: hävitamine. NB! Loendit POLE veel! Kunstlik kood hetkel!)"

* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISRecipient)
* subject ^short = "(ee Kes annetas)"

* occurrence[x] 0..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Broneerimise aeg)"

* reason 0..*
//* reason from $vris-destruction-reason-VS (preferred)
* reason ^short = "(ee Broneerimise põhjus?)"

* used 1..*
* used ^short = "(ee Viide broneeritud bioloogilisele materjalile)"
* used only CodeableReference(EEVRISSperm or EEVRISEmbryo or EEVRISOocyte or EEVRISReproductiveTissue)
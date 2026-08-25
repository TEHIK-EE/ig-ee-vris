Profile: EEVRISProcedureFertilization
Parent: EEVRISProcedure
Id: ee-vris-procedure-fertilization
Title: "Procedure: EE VRIS Fertilization"
Description: "Profile for oocyte fertilization procedure using IVF, ICSI, or both methods. (ee Munarakkude viljastamise protseduur.)"
* ^status = #draft

* category 0..1
* category ^short = "(ee Kategooria: viljastamine. Nt. 58533008 |Artificial insemination (procedure)|)"

* code 1..1
//* code from $vris-fertilization-method (required)
* code ^short = "(ee Viljastamise meetod IVF, ICSI või IVF+ICSI) NB! LOEND!!!!"

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Patsient, kelle munarakke viljastati)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Viljastamise kuupäev ja kellaaeg)"

* performer 1..*
* performer ^short = "(ee Embrüoloog/tegija)"
* performer.actor 1..1

* reason 0..*
* outcome 0..1
* complication 0..*

* used 1..*
* used ^short = "(ee Viited munarakkudele ja spermale)"
* used only CodeableReference(EEVRISOocyte or EEVRISSperm)

* note 0..*
Profile: EEVRISConditionFertilityIndicationMale
Parent: Condition
Id: ee-vris-condition-fertility-indication-male
Title: "Condition: EE VRIS Male Fertility Treatment Indication"
Description: "Clinical indication or diagnosis that is the reason for infertility treatment for Male. (ee MEHE kunstliku viljastamise näidustus, kliiniline diagnoos või seisund, mis on viljatusravi põhjus.)"
* ^status = #draft
* identifier 0..*
* identifier ^short = "(ee Näidustuse identifikaator)"
* clinicalStatus 1..1
* clinicalStatus ^short = "Kliiniline staatus (nt active, resolved)"
* verificationStatus 0..1
* verificationStatus ^short = "Kinnituse staatus (nt confirmed, provisional)"
* severity 0..0

* code 1..1
* code from $RHK-10 (preferred)
* code ^short = "(ee Näidustuse kood RHK-10 järgi. meeste loend VAJA!)"

* bodySite 0..0

* subject 1..1
* subject only Reference(EEVRISRecipient or $mpi-patient or EEVRISDonor)
* subject ^short = "(ee Retsipient (kui on partner), kellel näidustus esineb)"

* encounter 0..0

* onset[x] 0..1
* onset[x] only dateTime
* onset[x] ^short = "Millal seisund tuvastati"

* abatement[x] 0..0

* recordedDate 0..1
* recordedDate ^short = "Millal näidustus kirja pandi"

* participant 0..*
* participant ^short = "(ee Kes näidustuse kirjastas. NB! SPDst)"
* participant.function 0..1
* participant.function ^short = "Osaleja roll"
* participant.actor 1..1
* participant.actor ^short = "Osaleja viide"

* stage 0..0
* evidence 0..0

* note 0..*
* note ^short = "Lisainfo / täpsustus näidustuse kohta"
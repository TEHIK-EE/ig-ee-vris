Profile: EEVRISConditionTreatmentComplication
Parent: Condition
Id: ee-vris-condition-treatment-complication
Title: "Condition: EE VRIS Fertility Treatment Complication"
Description: "Complication related to fertility treatment. (ee Viljatusraviga seotud (haiglaravi vajavad?) tüsistused. NB! Tulevikus kasutada diagnoosi-teenuse viidet!)"
* ^status = #draft

* identifier 0..*
* identifier ^short = "(ee Tüsistuse identifikaator)"

* clinicalStatus 1..1
* clinicalStatus ^short = "(ee Kliiniline staatus: active / resolved / inactive vms)"

* verificationStatus 0..1
* verificationStatus ^short = "(ee Kinnituse staatus: confirmed / provisional)"

* code 1..1
//* code from $vris-fertility-treatment-complication (preferred)
* code ^short = "(ee Tüsistuse tüüp OHSS, infektsioon, verejooks vms. NB! LOEND VAJALIK!)"

* bodySite 0..0

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Patsient, kellel tüsistus esineb)"

* encounter 0..1
* encounter ^short = "(ee Viide haiglaravi visiidile, kui kohaldatav)"

* onset[x] 0..1
* onset[x] only dateTime
* onset[x] ^short = "(ee Millal tüsistus tekkis)"

* abatement[x] 0..1
* abatement[x] only dateTime
* abatement[x] ^short = "(ee Millal tüsistus taandus)"

* recordedDate 0..1
* recordedDate ^short = "(ee Millal tüsistus kirja pandi)"

* participant 0..*
* participant ^short = "(ee Kes tüsistuse kirjastas SPD-st)"
* participant.function 0..1
* participant.actor 1..1

* stage 0..0
* evidence 0..0

* note 0..*
* note ^short = "(ee Lisainfo tüsistuse kohta)"
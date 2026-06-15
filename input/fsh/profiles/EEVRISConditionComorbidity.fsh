Profile: EEVRISConditionComorbidity
Parent: Condition
Id: ee-vris-condition-comorbidity
Title: "Condition: EE VRIS Comorbidity"
Description: "Condition profile for comorbidities of a donor or recipient in the Estonian VRIS fertility system. (ee Kaasuv haigus.)"
* ^status = #draft

* identifier 0..*
* identifier ^short = "Kaasuvate haiguste identifikaator"

* clinicalStatus 1..1
* clinicalStatus ^short = "Kliiniline staatus (nt active, resolved, inactive)"

* verificationStatus 0..1
* verificationStatus ^short = "Kinnituse staatus (nt confirmed, provisional)"

* category 0..*
* category ^short = "Haiguse kategooria"

* severity 0..1
* severity ^short = "Haiguse raskusaste"

* code 1..1
* code from $RHK-10 (preferred)
* code ^short = "(ee Kaasuvate haiguse kood RHK-10 järgi. NB! IGA HAIGUSE JAOKS PROFIIL KORDUB!)"

* bodySite 0..0
* subject 1..1
* subject only Reference(EEVRISDonor or EEVRISRecipient)
* subject ^short = "(ee Doonor või retsipient, partner või annetaja kellel kaasuv haigus esineb)"

* encounter 0..0

* onset[x] 0..1
* onset[x] only dateTime
* onset[x] ^short = "(ee Millal haigus tuvastati)"

* abatement[x] 0..1
* abatement[x] only dateTime
* abatement[x] ^short = "(ee Millal haigus lõppes / taandus)"

* recordedDate 0..1
* recordedDate ^short = "(ee Millal haigus kirja pandi)"

* participant 0..*
* participant ^short = "(ee Kes haiguse kirja pani)"
* participant.actor 1..1
* participant.actor ^short = "(ee Osaleja viide. NB! SPD viide)"

* stage 0..0
* evidence 0..0

* note 0..*
* note ^short = "(ee Lisainfo / täpsustus kaasuvate haiguste kohta)"
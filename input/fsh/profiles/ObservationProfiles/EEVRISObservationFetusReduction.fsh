Profile: EEVRISObservationFetusReduction
Parent: Observation
Id: ee-vris-observation-fetus-reduction
Title: "Observation: EE VRIS Fetus Reduction"
Description: "Observation profile for recording whether fetus reduction procedure was performed in multifetal pregnancy. (ee Loote/loodete reduktsiooni läbiviimine mitmikrasedusel.)"
* ^status = #draft
* ^experimental = false
* ^version = "0.1.0"

* status = #final
* category 0..*
* category = $obsCategory#procedure
* category ^short = "(ee Vaatluse kategooria protseduur)"
* code 1..1
* code = $sct#265633004 //|Selective destruction of fetus (procedure)|
* code ^short = "(ee Loote reduktsioon"
* subject 1..1
* subject only Reference(EEVRISRecipient)
* subject ^short = "(ee Rase patsient)"
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Reduktsiooni kuupäev või hindamise aeg)"

* value[x] 0..1
* value[x] only boolean
* valueBoolean ^short = "(ee true = reduktsioon toimus, false = reduktsioon ei toimunud)"

* dataAbsentReason 0..1
* dataAbsentReason ^short = "(ee #unknown kui pole teada)"

* focus 0..*
* focus ^short = "(ee Viide raseduse Condition profiilile, kui olemas)"
* note 0..*
* note ^short = "(ee Lisainfo reduktsiooni kohta)"

* performer 0..*
* performer ^short = "(ee Kes reduktsiooni läbi viis)"

* component 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
Profile: EEVRISObservationAttemptingToConcieve
Parent: EEBaseObservation
Id: ee-vris-observation-attempting-to-concieve
Title: "Observation: EE VRIS Attempting to Concieve"
Description: "Observation profile for how long is woman attempting to concieve. (ee Rasesduda üritamine.)"
* ^status = #draft
* ^experimental = false
* ^version = "0.1.0"

* basedOn 0..0
* partOf 0..0
* status 1..1
* status ^short = "Observation status"
* category 0..*
* category ^short = "Observation category"
* code 1..1
//* code = $vris-anamnesis-code-CS#ttc-duration
* code ^short = "(ee Rasestuda üritamise aeg. Vaja LOENDIT või kasutame LOINC?)"
* subject 1..1
* subject only Reference(EEVRISRecipient)
* subject ^short = "(ee Patsient on AINULT viljatusravi saav naine)"
* focus 0..0
* encounter 0..0
* effective[x] 0..1
* effective[x] ^short = "(ee Anamneesi kogumise kuupäev)"
* issued 0..1
* issued ^short = "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
* performer 0..*
* performer ^short = "(ee Kes salvestas info. Viide SPD-le?)"
* value[x] only integer
* value[x] ^short = "(ee Kuude arv, kui kaua on rasestuda üritatud. Kui pole teada või pole asjakohane, jäta tühjaks ja kasuta dataAbsentReason)"
* dataAbsentReason 0..1
* interpretation 0..0
* note 0..*
* note ^short = "(ee Lisainfo / märkused)"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0

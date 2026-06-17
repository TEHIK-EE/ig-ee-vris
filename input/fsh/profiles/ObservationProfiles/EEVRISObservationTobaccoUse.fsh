Profile: EEVRISObservationTobaccoUse
Parent: EEBaseObservation
Id: ee-vris-observation-tobacco-use
Title: "Observation: EE VRIS Tobacco Use"
Description: "Observation profile for tobacco use status in the Estonian VRIS fertility system. (ee Tubakatoodete kasutamine.)"
* ^status = #draft
* ^experimental = false
* ^version = "1.0.0"

* status = #final
* category 1..*
* category = $obsCategory#social-history
* category ^short = "Vaatluse kategooria — sotsiaalne anamnees"
* code 1..1
* code = $loinc#72166-2
* code ^short = "Tobacco smoking status LOINC. (ee NB! ELHR seda koodi ei ole!)"
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient)
* subject ^short = "Viide kelle kohta andmed koguti"
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "Millal staatust hinnati"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://fhir.ee/ValueSet/vris-tobacco-use (required)
* valueCodeableConcept ^short = "Tubakatoodete kasutamise staatus"
* note 0..*
* note ^short = "Lisainfo vajadusel"
* component 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..1
* dataAbsentReason ^short = "Kui informatsioon puudub"
* interpretation 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
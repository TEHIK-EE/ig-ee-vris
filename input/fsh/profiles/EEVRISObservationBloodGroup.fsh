Profile: EEVRISObservationBloodGroup
Parent: Observation
Id: ee-vris-observation-blood-group
Title: "Observation: EE VRIS Blood Group"
Description: "Observation profile for recording the ABO and Rh(D) blood group in the Estonian VRIS fertility system. (ee Veregrupp.)"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* status = #final
* category 1..*
* category = $obsCategory#laboratory
* code 1..1
* code = $loinc#34532-2 "Blood type panel" 
* subject 1..1
* subject only Reference($vris-donor)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 0..0
* note ^short = "Lisainfo vajadusel"
* component 2..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed    
* component contains
    abo 1..1 and
    rh  1..1
* component[abo].code 1..1
* component[abo] ^short = "ABO veregrupp klassifikaatorist. NB! Loend ON olemas."
//* component[abo].code = $loinc#883-9 "ABO group [Type] in Blood"
* component[abo].value[x] 1..1
* component[abo].value[x] only CodeableConcept
* component[abo].valueCodeableConcept from https://fhir.ee/ValueSet/abo-veregrupp (required)
* component[rh].code 1..1
* component[rh] ^short = "RhD kuuluvus klassifikaatorist. NB! Loend ON olemas."
//* component[rh].code = $loinc#10331-7 "Rh [Type] in Blood"
* component[rh].value[x] 1..1
* component[rh].value[x] only CodeableConcept
* component[rh].valueCodeableConcept from https://fhir.ee/ValueSet/kvalitatiivse-uuringu-vastus (required)
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* focus 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0
Profile: EEVRISObservationBloodGroup
Parent: Observation
Id: ee-vris-observation-blood-group
Title: "Observation: EE VRIS Blood Group"
Description: "Observation profile for recording the ABO and Rh(D) blood group in the Estonian VRIS fertility system. (ee Veregrupp.)"
* category 0..*
//* category = $obsCategory#laboratory
* code 1..1
* code = $loinc#34530-6
* code ^short = "ABO ja RhD veregrupp"
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient or EEVRISDonorAnonymous)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 0..0
* note ^short = "(ee Lisainfo vajadusel)"

* component 2..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #closed
* component contains
    abo 1..1 and
    rh  1..1

* component[abo] ^short = "(ee ABO veregrupp klassifikaatorist)"
* component[abo].code = $loinc#57743-7
* component[abo].value[x] 1..1
* component[abo].value[x] only CodeableConcept
* component[abo].valueCodeableConcept from $sct (required)

* component[rh] ^short = "RhD kuuluvus klassifikaatorist"
* component[rh].code = $loinc#978-7
* component[rh].value[x] 1..1
* component[rh].value[x] only CodeableConcept
* component[rh].valueCodeableConcept from $sct (required)

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
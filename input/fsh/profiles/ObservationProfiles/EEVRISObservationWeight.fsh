Profile: EEVRISObservationWeight
Parent: Observation
Id: ee-vris-observation-weight
Title: "Observation: EE VRIS Weight"
Description: "Observation profile for recording weight of a donor in the Estonian VRIS fertility system. (ee Kaal.)"
* status = #final
* category 0..* 
* category ^short = "Vaatluse kategooria"
* category = $obsCategory#vital-signs "Vital Signs"
* code 1..1
* code ^short = "Kehakaal"
* code = $sct#27113001 "Body weight"
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient or $mpi-patient or EEVRISDonorAnonymous)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal mõõtmine tehti)"
* value[x] 1..1
* value[x] only Quantity
* value[x] ^short = "Kehakaal kilogrammides"
* valueQuantity.value 1..1
* valueQuantity.system 1..1
* valueQuantity.system = $ucum
* valueQuantity.code 1..1
* valueQuantity.code = #kg 
* valueQuantity.unit = "kg"
* note ^short = "Kui on midagi vaja veel lisada"
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
* dataAbsentReason 0..0
* interpretation 0..0
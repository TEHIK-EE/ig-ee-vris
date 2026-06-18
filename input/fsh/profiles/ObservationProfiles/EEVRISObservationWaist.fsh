Profile: EEVRISObservationWaist
Parent: Observation
Id: ee-vris-observation-waist
Title: "Observation: EE VRIS Waist"
Description: "Observation profile for recording waist circumference of a donor in the Estonian VRIS fertility system. (ee Vööümbermõõt.)"
* status = #final 
* category ^short = "Vaatluse kategooria. Kas me üldse kasutame kategooriat?"
* category = $obsCategory#vital-signs "Vital Signs"
* code 1..1
* code ^short = "Vööümbermõõt"
* code = $sct#276361009
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient or $mpi-patient or EEVRISDonorAnonymous)
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal mõõtmine tehti)"
* value[x] 1..1
* value[x] only Quantity
* value[x] ^short = "(ee Vööümbermõõt sentimeetrites)"
* valueQuantity.value 1..1
* valueQuantity.system 1..1
* valueQuantity.system = $ucum
* valueQuantity.code 1..1
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
* note ^short = "(ee Kui on midagi vaja veel lisada)"
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
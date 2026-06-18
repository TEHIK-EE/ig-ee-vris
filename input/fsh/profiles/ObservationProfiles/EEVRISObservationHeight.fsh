Profile: EEVRISObservationHeight
Parent: Observation
Id: ee-vris-observation-height
Title: "Observation: EE VRIS Height"
Description: "Observation profile for recording height of a donor in the Estonian VRIS fertility system. (ee Pikkus.)"
* status = #final
* category ^short = "Vaatluse kategooria — elutähtis näitaja"
* category = $obsCategory#vital-signs "Vital Signs"
* code 1..1
* code ^short = "Kehakõrguse kood"
* code = $sct#1153637007
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient or EEVRISDonorAnonymous)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal mõõtmine tehti)"
* value[x] 1..1
* value[x] only Quantity
* value[x] ^short = "Kehakõrgus sentimeetrites"
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
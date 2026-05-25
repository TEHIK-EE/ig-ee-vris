Profile: EEVRISDonorHeight
Parent: Observation
Id: ee-vris-observation-height
Title: "EE VRIS Height Observation"
Description: "Observation profile for recording height of a donor in the Estonian VRIS fertility system. (ee Pikkus.)"
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* status = #final
* category 1..* 
* category ^short = "Vaatluse kategooria — elutähtis näitaja"
* category = $obsCategory#vital-signs "Vital Signs"
* code 1..1
* code ^short = "Kehakõrguse LOINC kood"
* code = $loinc#8302-2 "Body height"
* subject 1..1
* subject only Reference($vris-donor)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "Millal mõõtmine tehti"
* value[x] 1..1
* value[x] only Quantity
* value[x] ^short = "Kehakõrgus sentimeetrites"
* valueQuantity.value 1..1
* valueQuantity.system 1..1
* valueQuantity.system = $ucum
* valueQuantity.code 1..1
* valueQuantity.code = #cm
* valueQuantity.unit = "cm"
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
* dataAbsentReason 0..1
* interpretation 0..0
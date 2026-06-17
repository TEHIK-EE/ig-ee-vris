Profile: EEVRISObservationPregnancy
Parent: Observation
Id: ee-vris-observation-pregnancy
Title: "Observation: EE VRIS Pregnancy"
Description: "Observation profile for recording pregnancy. (ee Rasedus - biokeemiline või kliiniline.)"
* ^status = #draft
* ^experimental = false
* ^version = "0.1.0"
* status = #final
* category 1..* 
* category ^short = "Raseduse kategooria?"
* category = $obsCategory#social-history "Social history"
* code 1..1
* code ^short = "Siia kood"
* code = $sct#77386006 
* subject 1..1
* subject only Reference($vris-donor or EEVRISDonorAnonymous or EEVRISRecipient)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal mõõtmine tehti)"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^short = "(ee loend VIIDE)"
* note ^short = "Kui on midagi vaja veel lisada"
* component 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* focus 0..*
* focus ^short = "(ee Siia referents raseduse condition profiilile)"
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..1
* interpretation 0..0
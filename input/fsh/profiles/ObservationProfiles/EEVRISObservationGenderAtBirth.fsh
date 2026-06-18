/*Profile: EEVRISObservationGenderAtBirth
Parent: Observation
Id: ee-vris-observation-gender-at-birth
Title: "Observation: EE VRIS Gender at Birth"
Description: "Observation profile for recording gender of a donor at the moment of birth. (ee Sünnisugu.)"
* ^status = #draft
* ^experimental = false
* ^version = "0.1.0"
* status = #final
* category 1..* 
* category ^short = "Vaatluse kategooria — elutähtis näitaja"
* category = $obsCategory#social-history "Social history"
* code 1..1
* code ^short = "Sugu"
//* code = $loinc#8302-2 "Body height"
* subject 1..1
* subject only Reference($vris-donor or EEVRISDonorAnonymous or EEVRISRecipient or $mpi-patient)
* effective[x] 1..1 
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal mõõtmine tehti)"
* value[x] 1..1
* value[x] only CodeableConcept
* value[x] ^short = "(ee Soo loend VIIDE)"
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
*/
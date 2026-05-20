Profile: EEVRISObservationDonorBloodGroup
Parent: Observation
Id: ee-vris--observation-donor-blood-group
Title: "EE VRIS Donor Blood Group Observation"
Description: "Observation profile for recording the ABO and Rh(D) blood group of a donor in the Estonian VRIS fertility system."
* ^status = #active
* ^experimental = false
* ^version = "1.0.0"
* status = #final
* category 1..*
* category ^short = "Siia kategooria labor."
* category = #laboratory
* code 1..1
* code ^short = "(ee siia LOINC)"
* code = #57743-7 "ABO-veregrupp (kinnitav uuring)"
* subject 1..1 
* subject only Reference($vris-patient)
* effective[x] 1..1
* effective[x] only dateTime
* performer 
* value[x] 1..1
* value[x] only CodeableConcept
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





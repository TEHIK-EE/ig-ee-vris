Profile: EEVRISObservationTobaccoUse
Parent: Observation
Id: ee-vris-observation-tobacco-use
Title: "Observation: EE VRIS Tobacco Use"
Description: "Observation profile for tobacco use status in the Estonian VRIS fertility system. (ee Tubakatoodete kasutamine.)"
* status = #final
* category = $obsCategory#social-history
* category ^short = "Vaatluse kategooria"
* code 1..1
* code = $sct#365980008 "Finding of tobacco use and exposure"
* code ^short = "Tobacco smoking status."
* subject 1..1
* subject only Reference($vris-donor or EEVRISRecipient or $mpi-patient or EEVRISDonorAnonymous)
* subject ^short = "Viide kelle kohta andmed koguti"
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal tubakatoodete tarvitamise staatust hinnati)"
* value[x] 1..1
* value[x] only CodeableConcept
* valueCodeableConcept 1..1
* valueCodeableConcept from https://fhir.ee/ValueSet/vris-tobacco-use (required)
* valueCodeableConcept ^short = "(ee Tubakatoodete kasutamise staatus. NB! Seda LOENDIT veel EI ole. Kas saaks seostada nikotiiniandmete projektiga?)"
* note 0..*
* note ^short = "(ee Lisainfo vajadusel)"
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
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
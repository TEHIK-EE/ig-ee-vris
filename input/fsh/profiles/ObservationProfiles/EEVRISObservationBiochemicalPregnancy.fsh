Profile: EEVRISObservationBiochemicalPregnancy
Parent: Observation
Id: ee-vris-observation-biochemical-pregnancy
Title: "Observation: EE VRIS Biochemical Pregnancy"
Description: "Biochemical pregnancy detected by blood test. (ee Biokeemiline rasedus, tuvastatud vereanalüüsiga.)"

* status = #final
* category = $obsCategory#laboratory
* code 1..1
* code = $sct#127362006
* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal analüüs tehti)"

* value[x] 0..1                                  // ← 0..1 et lubada dataAbsentReason
* value[x] only boolean
* valueBoolean ^short = "(ee true = rasedus tuvastatud, false = rasedust ei tuvastatud)"

* dataAbsentReason 0..1
* dataAbsentReason ^short = "(ee Kui pole teada, kasuta #unknown. FHIR loend?)"
//* dataAbsentReason from $data-absent-reason (required)

* derivedFrom 0..*
* derivedFrom ^short = "(ee Viide β-hCG analüüsi tulemustele (KAS on vaja?))"
* focus 0..*
* focus ^short = "(ee Viide raseduse Condition profiilile)"
* note 0..*

* component 0..0
* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0
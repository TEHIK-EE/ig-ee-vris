Profile: EEVRISObservationClinicalPregnancy
Parent: Observation
Id: ee-vris-observation-clinical-pregnancy
Title: "Observation: EE VRIS Clinical Pregnancy"
Description: "Clinical pregnancy, confirmed by ultrasound AND number of fetus. (ee Kliiniline rasedus, kinnitatud ultraheliuuringuga. LOOTEMUNADE arv ka! NB! Biokeemilise raseduse profiil on eraldi.)"
* ^status = #draft
* ^version = "0.1.0"
* status = #final
* category = $obsCategory#exam
* code 1..1
* code = $sct#77386006 // |Pregnancy (finding)|
* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Millal UH tehti)"

* value[x] 0..1
* value[x] only boolean
* valueBoolean ^short = "(ee true = kliiniline rasedus tuvastatud, false = ei tuvastatud)"

* dataAbsentReason 0..1
* dataAbsentReason ^short = "(ee #unknown kui pole teada)"

* component 0..*
* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    gestationalSacCount 0..1 and
    fetalHeartActivity 0..1

* component[gestationalSacCount] ^short = "(ee Lootemunade arv ultraheliuuringul)"
* component[gestationalSacCount].code = $sct#300572002 //|Gestational sac present (finding)|    // "Gestational sac"
* component[gestationalSacCount].value[x] only integer
* component[gestationalSacCount].valueInteger ^short = "(ee Lootemunade arv, nt 1, 2, 3)"

* component[fetalHeartActivity] ^short = "(ee Loote südametegevus)"
* component[fetalHeartActivity].code = $sct#249045009 //|Fetal heart sounds present (finding)|
* component[fetalHeartActivity].value[x] only boolean

* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* partOf 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* interpretation 0..0
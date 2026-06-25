Profile: EEVRISObservationPrenatalCareDiscontinued
Parent: Observation
Id: ee-vris-observation-prenatal-care-discontinued
Title: "Observation: EE VRIS Prenatal Care Discontinued"
Description: "Indicator whether prenatal care was discontinued by patient or for unknown reasons. (ee Rasedusaegne tervisekontroll katkestatud patsiendi poolt või teadmata põhjusel.)"
* ^status = #draft

* status = #final
//* category = $obsCategory#survey
* code = $sct#424525001 //|Antenatal care (regime/therapy)|      * subject 1..1
* subject only Reference(EEVRISRecipient)
* effective[x] 1..1
* effective[x] only dateTime

* value[x] 0..1
* value[x] only boolean
* valueBoolean ^short = "(ee true = tervisekontroll katkestati, false = ei katkestatud)"

* dataAbsentReason 0..1
* note 0..*
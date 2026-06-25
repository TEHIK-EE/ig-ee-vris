Profile: EEVRISObservationBirthWeight
Parent: Observation
Id: ee-vris-observation-birth-weight
Title: "Observation: EE VRIS Birth Weight"
Description: "Birth weight of newborn child. (ee Lapse sünnikaal grammides.)"
* ^status = #draft

* status = #final
* category = $obsCategory#vital-signs
* code = $sct#364589006                                  // Birth weight
* subject 1..1
* subject only Reference(EEVRISPatientChild)
* effective[x] 1..1
* effective[x] only dateTime
* value[x] 1..1
* value[x] only Quantity
* valueQuantity.value 1..1
* valueQuantity.unit = "g"
* valueQuantity.system = $ucum
* valueQuantity.code = #g
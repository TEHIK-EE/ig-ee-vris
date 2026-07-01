Profile: EEVRISObservationNeonatalIntensiveCare
Parent: Observation
Id: ee-vris-observation-neonatal-intensive-care
Title: "Observation: EE VRIS Neonatal Intensive Care"
Description: "Whether the child received neonatal intensive care during first 7 days of life. (ee Lapse intensiivravi esimese 7 elupäeva jooksul.)"
* ^status = #draft

* status = #final
* category = $obsCategory#exam
* code = $sct#182810003 // |Intensive care monitoring (regime/therapy)|                                   // Neonatal intensive care
* subject 1..1
* subject only Reference(EEVRISPatientChild)
* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Hindamise kuupäev)"

* value[x] 0..1
* value[x] only boolean
* valueBoolean ^short = "(ee true = sai intensiivravi, false = ei saanud)"

* dataAbsentReason 0..1
* dataAbsentReason ^short = "(ee Kasutada seda loendit, kui tulemus pole teada/on ebaselge/vms)"
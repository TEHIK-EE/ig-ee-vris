Instance: carePlanIvfCycle2025Example
InstanceOf: EEVRISCarePlan
Usage: #example
Description: "Example of a fresh IVF treatment cycle CarePlan for female recipient."
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-care-plan"
//* identifier[0].system = "https://fhir.ee/sid/vris/care-plan"
* identifier.value = "IVF-CYCLE-2025-001"
* status = #active
* intent = #plan
* title = "IVF tsükkel #1 Märts 2025"
* description = "Värske IVF tsükkel doonori spermat ja retsipiendi enda munarakke kasutades"
* category[0].coding.system = $sct
* category[=].coding.code = #TODO
* category[=].coding.display = "Fresh IVF cycle"
* subject = Reference(Patient/patientFemale)
//* encounter = Reference(Encounter/encounter-ivf-consultation-2025)
* period.start = "2025-03-01"
* period.end = "2025-04-20"
* created = "2025-03-01"
* custodian = Reference(Practitioner/practitioner-doctor)
* addresses[0].reference = Reference(Condition/female-fertility-indication-example1)
//* supportingInfo[0] = Reference(RelatedPerson/relatedPersonPartner)
* supportingInfo = Reference(Patient/patientDonorMale)
* activity[0].performedActivity[procedure].reference = Reference(Procedure/procedure-oocyte-retrieval)
* activity[+].performedActivity[procedure].reference = Reference(Procedure/procedure-fertilization1)
* activity[+].performedActivity[procedure].reference = Reference(Procedure/procedure-embryo-transfer)
* activity[+].performedActivity[medicationAdministration].reference = Reference(MedicationAdministration/medicationAdministrationFollitropin1)
* activity[+].performedActivity[observation].reference = Reference(Observation/observation-stimulation-protocol)
* activity[+].performedActivity[observation].reference = Reference(Observation/observation-fertilization-counts)
* activity[+].performedActivity[observation].reference = Reference(Observation/observation-embryo-lifecycle-counts)

* extension[coverage].valueBoolean = true
//* extension[coverage].valueCodeableConcept.coding.code = #TODO
//* extension[coverage].valueCodeableConcept.coding.display = "Health Insurance Fund covered"

* note.text = "Esimene IVF tsükkel patsiendi jaoks. Tulemus: kliiniline rasedus tuvastatud 12. nädalal."
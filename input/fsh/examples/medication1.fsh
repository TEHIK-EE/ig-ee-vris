Instance: medicationAdministrationFollitropin1
InstanceOf: EEVRISMedicationAdministration
Usage: #example
Description: "Example of follitropin administration during ovarian stimulation for IVF cycle"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-medication-administration"
* status = #completed
* category.coding.system = $sct
* category.coding.code = #TODO
* category.coding.display = "Outpatient medication administration"
* medication.concept.coding.system = "https://fhir.ee/CodeSystem/atc-ee"
* medication.concept.coding.code = #G03GA05
* medication.concept.coding.display = "Gonal-F"
* subject = Reference(Patient/patientFemale)
//* encounter = Reference(Encounter/encounter-ivf-stimulation-2025)
* basedOn = Reference(CarePlan/carePlanIvfCycle2025)
* occurenceDateTime = "2025-03-18T08:30:00+02:00"
* recorded = "2025-03-18T08:35:00+02:00"
* performer[0].function.coding.system = $sct
* performer[=].function.coding.code = #TODO
* performer[=].function.coding.display = "Nurse"
* performer[=].actor = Reference(PractitionerRole/practitionerrole-doctor)

* reason.concept.coding.system = $sct
* reason.concept.coding.code = #732970000 //placeholder?!|Controlled ovarian stimulation (procedure)|
* reason.concept.coding.display = "Controlled ovarian stimulation"
* dosage.text = "150 IU subkutaanselt kord päevas"
* dosage.route.coding.system = $sct
* dosage.route.coding.code = #34206005
* dosage.route.coding.display = "Subcutaneous route"
* dosage.dose.value = 150
* dosage.dose.unit = "IU"
* dosage.dose.system = "http://unitsofmeasure.org"
* dosage.dose.code = #[iU]
* note.text = "Stimulatsiooni 5. päev. Patsient talub ravimit hästi."
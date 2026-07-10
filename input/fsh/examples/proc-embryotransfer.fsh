Instance: procedure-embryo-transfer
InstanceOf: EEVRISProcedureEmbryoTransfer
Usage: #example
Description: "Example of fresh embryo transfer procedure"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-embryo-transfer"
* status = #completed
* category.coding.system = $sct
* category.coding.code = #TODO
* category.coding.display = "Embryo transfer"
* code.coding.system = $sct
* code.coding.code = #TODO
* code.coding.display = "Embryo transfer"
* subject = Reference(Patient/patientFemale)
* occurrenceDateTime = "2025-03-30T10:00:00+02:00"
* performer[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* outcome.coding.system = $sct
* outcome.coding.code = #TODO
* outcome.coding.display = "Successful transfer"
* used[0].reference = Reference(BiologicallyDerivedProduct/donor-embryo1)
* note.text = "Üks embrüo siirdatud, arengupäev 5."
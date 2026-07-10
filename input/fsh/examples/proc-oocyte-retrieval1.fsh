Instance: procedure-oocyte-retrieval
InstanceOf: EEVRISProcedureOocyteRetrieval
Usage: #example
Description: "Example of oocyte retrieval procedure in IVF cycle March 2025"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-oocyte-retrieval"
* status = #completed
* category.coding.system = $sct
* category.coding.code = #TODO
* category.coding.display = "Oocyte retrieval"
* code = $sct#177037000
* subject = Reference(Patient/patientFemale)
* occurrenceDateTime = "2025-03-25T09:00:00+02:00"
* performer[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* outcome.coding.system = $sct
* outcome.coding.code = #TODO
* outcome.coding.display = "Successful"
* used[0].reference = Reference(BiologicallyDerivedProduct/oocyte1)
* note.text = "Punktsioon teostatud edukalt, saadi 8 munarakku."
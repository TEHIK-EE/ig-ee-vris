Instance: procedure-fertilization1
InstanceOf: EEVRISProcedureFertilization
Usage: #example
Description: "Example of IVF fertilization procedure using donor sperm"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization"
* status = #completed
* category.coding.system = $sct
* category.coding.code = #TODO
* category.coding.display = "Fertilization"
* code.coding.system = $sct
* code.coding.code = #TODO
* code.coding.display = "IVF"
* subject = Reference(Patient/patientFemale)
* occurrenceDateTime = "2025-03-25T14:00:00+02:00"
* performer[0].actor = Reference(PractitionerRole/practitionerrole-doctor)
* outcome.coding.system = $sct
* outcome.coding.code = #TODO
* outcome.coding.display = "Successful fertilization"
* used[0].reference = Reference(BiologicallyDerivedProduct/oocyte1)
* used[+].reference = Reference(BiologicallyDerivedProduct/sperm1)
* note.text = "6 munarakku 8-st viljastusid edukalt IVF meetodil."
Instance: observation-fertilization-counts
InstanceOf: EEVRISObservationFertilizationCounts
Usage: #example
Description: "Example of laboratory fertilization counts after IVF cycle"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-fertilization-counts"
* status = #final
* code.coding.system = $sct
* code.coding.code = #TODO
* code.coding.display = "Fertilization counts"
* subject = Reference(Patient/patientFemale)
* effectiveDateTime = "2025-03-26T10:00:00+02:00"
* partOf = Reference(Procedure/procedure-fertilization1)

* component[mIIOocyteCountICSI].code.coding.code = $sct#12345678
* component[mIIOocyteCountICSI].valueInteger = 0
* component[usedOocyteCountIVF].code.coding.code = $sct#22345678
* component[usedOocyteCountIVF].valueInteger = 8
* component[usedMIIOocyteCountICSI].code.coding.code = $sct#32345678
* component[usedMIIOocyteCountICSI].valueInteger = 0
* component[correctlyFertilizedPN2].code.coding.code = $sct#42345678
* component[correctlyFertilizedPN2].valueInteger = 6
* component[ivfFertilizedMIIOocyteCount].code.coding.code = $sct#52345678
* component[ivfFertilizedMIIOocyteCount].valueInteger = 6

* note.text = "Kõik 8 munarakku kasutati IVF meetodiks, 6 viljastusid korrektselt."
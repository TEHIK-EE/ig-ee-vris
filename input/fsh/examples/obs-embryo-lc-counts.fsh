Instance: observation-embryo-lifecycle-counts
InstanceOf: EEVRISObservationEmbryoLifecycleCounts
Usage: #example
Description: "Example of embryo lifecycle counts summary for IVF cycle"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-observation-embryo-lifecycle-counts"

* status = #final

* code.coding.system = $sct
* code.coding.code = #TODO
* code.coding.display = "Embryo lifecycle summary"

* subject = Reference(Patient/patientFemale)

* focus[0] = Reference(BiologicallyDerivedProduct/donor-embryo1)

* effectiveDateTime = "2025-04-01"

* partOf = Reference(Procedure/procedure-fertilization1)
* component[frozenEmbryoCount].code.coding.code = $sct#2345123
* component[frozenEmbryoCount].valueInteger = 4
* component[transferredEmbryoCount].code.coding.code = $sct#2345124
* component[transferredEmbryoCount].valueInteger = 1
* component[destroyedEmbryoCount].code.coding.code = $sct#2345129
* component[destroyedEmbryoCount].valueInteger = 1

* note.text = "6 viljastunud embrüost: 1 siirdatud värskelt, 4 külmutatud, 1 hävitatud kvaliteedi tõttu."
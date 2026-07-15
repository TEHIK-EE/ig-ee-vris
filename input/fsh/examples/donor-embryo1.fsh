Instance: donor-embryo1
InstanceOf: EEVRISEmbryo
Usage: #example
Description: "Example of embryo"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-embryo"

//* identifier[0].system = "https://fhir.ee/sid/vris/embryo"
//* identifier[=].value = "embryo-2025-02-20-001"

* extension[cryopreservationDate].valueDateTime = "2025-02-20"
* extension[cryopreservationReason].valueCodeableConcept.coding.system = $reasons
* extension[cryopreservationReason].valueCodeableConcept.coding.code = #hilisem //TODO! placeholder|Cryopreservation for genetic studies (procedure)|
* extension[cryopreservationReason].valueCodeableConcept.coding.display = "PGT"
* extension[recipient].valueReference = Reference(Patient/patientFemale)
* extension[thawning].extension[thawingDate].valueDateTime = "2025-08-10"
* extension[thawning].extension[thawingCount].valueInteger = 1

* extension[reCryo].extension[reCryo].valueBoolean = false
* extension[reCryo].extension[reCryoCount].valueInteger = 0
* extension[reCryo].extension[reCryoDate].valueDateTime = "2025-08-10"
//* productCategory.coding.system = "http://hl7.org/fhir/product-category"
* productCategory = #cells
* productCode = $sct#57991002 "Entire embryo"
* productStatus = #available
* collection.source = Reference(Patient/patientFemale)
* property[developmentDay].valueInteger = 5
* parent[0] = Reference(sperm1)
* parent[+] = Reference(oocyte1)
* biologicalSourceEvent.system = "https://fhir.ee/sid/vris/procedure" //sellist pole olemas!
* biologicalSourceEvent.value = "fertilization-2025-02-15-001"
* processingFacility[0] = Reference(Organization/organization-novavita1)
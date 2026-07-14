Instance: supplyDeliverySperm1
InstanceOf: EEVRISSupplyDelivery
Usage: #example
Description: "Example of sperm package delivery from Nova Vita to PERH, 4 doses of donor sperm"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery"
//* identifier[0].system = "https://fhir.ee/sid/vris/supply-delivery"
* identifier.value = "SD-2025-04-15-001"
* status = #completed
* type = #biologicallyderivedproduct
* extension[suppliedPackage].valueReference = Reference(PackagedProductDefinition/packaged-sperm1)
* suppliedItem[0].quantity.value = 4
* suppliedItem[=].quantity.unit = "doosi"
* suppliedItem[=].itemReference = Reference(BiologicallyDerivedProduct/sperm1)
* occurrenceDateTime = "2025-04-15T10:30:00+02:00"
* supplier = Reference(Organization/organization-novavita1)
* supplier.display = "Nova Vita Kliinik"

* destination.reference = "https://example.org/fhir/Location/perhFertilityClinic"
* destination.display = "PERH Fertility Clinic"
* receiver[0].reference = "https://example.org/fhir/Organization/perh"
* receiver[=].display = "Põhja-Eesti Regionaalhaigla"
Instance: supplyDeliverySperm1
InstanceOf: EEVRISSupplyDelivery
Usage: #example
Description: "Example of sperm package delivery from Nova Vita to Finland, 4 packages of donor sperm"
* meta.profile = "https://fhir.ee/vris/StructureDefinition/ee-vris-supply-delivery"
//* identifier[0].system = "https://fhir.ee/sid/vris/supply-delivery"
* identifier.value = "SD-2025-04-15-001"
* status = #completed
* type = #biologicallyderivedproduct
* extension[destinationCountry].valueCodeableConcept = $rtk#FI "Finland"
//* suppliedItem[0].quantity.value = 4
//* suppliedItem[=].quantity.unit = "doosi"
* suppliedItem[0].itemReference = Reference(BiologicallyDerivedProduct/sperm1-1)
* suppliedItem[+].itemReference = Reference(BiologicallyDerivedProduct/sperm1-2)
* suppliedItem[+].itemReference = Reference(BiologicallyDerivedProduct/sperm1-3)
* occurrencePeriod.start = "2025-04-15T10:30:00+02:00"
* occurrencePeriod.end = "2025-04-17T10:30:00+02:00"
* supplier.identifier.system = "https://fhir.ee/sid/org/est/br"
* supplier.identifier.value = "10285009"
* supplier.display = "OÜ Nova Vita Kliinik"

// Vastuvõtja: välisriigi organisatsioon — identifikaator puudub, ainult tekst
* receiver.display = "Ovumia Fertinova, Helsinki"
//* receiver[0].reference = "https://example.org/fhir/Organization/perh"
//* receiver[=].display = "Põhja-Eesti Regionaalhaigla"

Instance: supplydeliveryEmbryo1
InstanceOf: EEVRISSupplyDelivery
Usage: #example
Description: "Packages EMB789-1 and EMB789-2 shipped from Nova Vita Kliinik to ITK, sent but not yet received"
* identifier.value = "SD2026-148"
* status = #in-progress
* type = #biologicallyderivedproduct
* occurrencePeriod.start = "2026-11-11T09:30:00+02:00"

* suppliedItem[0].itemReference = Reference(BiologicallyDerivedProduct/embryo1)
* suppliedItem[+].itemReference = Reference(BiologicallyDerivedProduct/embryo2)
* supplier.identifier.system = "https://fhir.ee/sid/org/est/br"
* supplier.identifier.value = "10285009"
* supplier.display = "OÜ Nova Vita Kliinik"
* receiver.identifier.system = "https://fhir.ee/sid/org/est/br"
* receiver.identifier.value = "10822068"
* receiver.display = "Ida-Tallinna Keskhaigla"
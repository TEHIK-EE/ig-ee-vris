Instance: sperm1-1
InstanceOf: EEVRISSperm
Usage: #example
Description: "Package 1 after SupplyDelivery when it is accepted by other TTO and ready for use"
//* identifier.system = $vris-bdp-id
* identifier.value = "ABC123-1"
* productCode = $sct#119347001 "Seemnerakud"
* productStatus = $bdp-statusCS#in-storage "lattu sisse võetud"
* biologicalSourceEvent.value = "ABC123"
* parent = Reference(BiologicallyDerivedProduct/sperm1)
* division = "1"
* expirationDate = "2025-02-20T18:00:00+02:00"
* property[preservationState].valueCodeableConcept = $vris-preservation-state#fresh "Värske"
* property[Role].valueCodeableConcept = $sct#237391000181109 "Mittepartnerannetaj" // |Non-partner donor (person)|
* property[originCountry].valueCodeableConcept = $rtk#EE
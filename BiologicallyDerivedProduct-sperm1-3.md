# sperm1-3 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **sperm1-3**

## Example BiologicallyDerivedProduct: sperm1-3

Profile: [BiologicallyDerivedProduct: EE VRIS Sperm](StructureDefinition-ee-vris-sperm.md)

**productCode**: Seemnerakud

**parent**: [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md)

**identifier**: ABC123-3

**biologicalSourceEvent**: ABC123

**processingFacility**: [Organization Nova Vita Kliinik AS](Organization-organization-novavita1.md)

**division**: 3

**productStatus**: [not stated]: available (available)

**storageTempRequirements**: 196-196 -196 °C

### Properties

| | | |
| :--- | :--- | :--- |
| - | **Type** | **Value[x]** |
| * | preservation-state | Külmutatud |



## Resource Content

```json
{
  "resourceType" : "BiologicallyDerivedProduct",
  "id" : "sperm1-3",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-sperm"]
  },
  "productCode" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/vris-bioloogilise-materjali-liik",
      "code" : "sperm",
      "display" : "Seemnerakud"
    }]
  },
  "parent" : [{
    "reference" : "BiologicallyDerivedProduct/sperm1"
  }],
  "identifier" : [{
    "value" : "ABC123-3"
  }],
  "biologicalSourceEvent" : {
    "value" : "ABC123"
  },
  "processingFacility" : [{
    "reference" : "Organization/organization-novavita1"
  }],
  "division" : "3",
  "productStatus" : {
    "code" : "available"
  },
  "storageTempRequirements" : {
    "low" : {
      "value" : 196,
      "unit" : "-196 °C",
      "system" : "http://unitsofmeasure.org",
      "code" : "°C"
    },
    "high" : {
      "value" : 196,
      "unit" : "-196 °C",
      "system" : "http://unitsofmeasure.org",
      "code" : "°C"
    }
  },
  "property" : [{
    "type" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-tunnuse-tyyp",
        "code" : "preservation-state"
      }]
    },
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "https://fhir.ee/ValueSet/vris-sailitamise-olek",
        "code" : "cryopreserved",
        "display" : "Külmutatud"
      }]
    }
  }]
}

```

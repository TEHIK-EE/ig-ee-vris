# patientDonorMale - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **patientDonorMale**

## Example Patient: patientDonorMale

Language: et

Profile: [Patient: EE VRIS Donor](StructureDefinition-ee-vris-donor.md)

Ygrek Mister (official) Male, DoB: 1983-01-11 ( DR)

-------

| | |
| :--- | :--- |
| Active: | true |
| Other Id: | `https://fhir.ee/sid/pid/est/ppn`/K0307337 (, period: (?) --> 2023-12-28) |
| Contact Detail | EE (home) |
| Patient Nationality: | * code: Estonia
 |
| [Cell origin role](StructureDefinition-ee-vris-role.md) | Non-partner donor |
| [Patient Birth Place](https://build.fhir.org/ig/HL7/fhir-extensions/StructureDefinition-patient-birthPlace.html) | Tartu EE |



## Resource Content

```json
{
  "resourceType" : "Patient",
  "id" : "patientDonorMale",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-donor"]
  },
  "language" : "et",
  "extension" : [{
    "url" : "https://fhir.ee/vris/StructureDefinition/ee-vris-role",
    "valueCodeableConcept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Non-partner donor"
      }]
    }
  },
  {
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-birthPlace",
    "valueAddress" : {
      "city" : "Tartu",
      "country" : "EE"
    }
  },
  {
    "extension" : [{
      "url" : "code",
      "valueCodeableConcept" : {
        "coding" : [{
          "system" : "urn:iso:std:iso:3166",
          "code" : "EE",
          "display" : "Estonia"
        }]
      }
    }],
    "url" : "http://hl7.org/fhir/StructureDefinition/patient-nationality"
  }],
  "identifier" : [{
    "type" : {
      "coding" : [{
        "code" : "DR"
      }]
    },
    "system" : "https://fhir.ee/sid/pid/est/ni",
    "value" : "38301105216"
  },
  {
    "system" : "https://fhir.ee/sid/pid/est/ppn",
    "value" : "K0307337",
    "period" : {
      "end" : "2023-12-28"
    },
    "assigner" : {
      "display" : "Estonian Police and Board Agency"
    }
  }],
  "active" : true,
  "name" : [{
    "use" : "official",
    "family" : "Mister",
    "given" : ["Ygrek"]
  }],
  "gender" : "male",
  "birthDate" : "1983-01-11",
  "_birthDate" : {
    "extension" : [{
      "url" : "https://fhir.ee/base/StructureDefinition/ee-patient-age",
      "valueAge" : {
        "value" : 42,
        "unit" : "a",
        "system" : "http://unitsofmeasure.org",
        "code" : "a"
      }
    }]
  },
  "address" : [{
    "use" : "home",
    "country" : "EE"
  }]
}

```

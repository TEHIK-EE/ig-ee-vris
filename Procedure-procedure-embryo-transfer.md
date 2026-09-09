# procedure-embryo-transfer - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-embryo-transfer**

## Example Procedure: procedure-embryo-transfer

Profile: [Procedure: EE VRIS Embryo Transfer](StructureDefinition-ee-vris-procedure-embryo-transfer.md)

**status**: Completed

**category**: Embryo transfer

**code**: Embryo transfer

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurrence**: 2025-03-30 10:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**outcome**: Successful transfer

**note**: 

> 

Üks embrüo siirdatud, arengupäev 5.


### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: extension = 2025-02-20,PGT,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216),,; productCategory = cells (cells); productCode = Entire embryo; biologicalSourceEvent = https://fhir.ee/sid/vris/procedure#fertilization-2025-02-15-001; productStatus = available (available)](BiologicallyDerivedProduct-donor-embryo1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-embryo-transfer",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-embryo-transfer"]
  },
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Embryo transfer"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Embryo transfer"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "occurrenceDateTime" : "2025-03-30T10:00:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Successful transfer"
    }]
  },
  "note" : [{
    "text" : "Üks embrüo siirdatud, arengupäev 5."
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/donor-embryo1"
    }
  }]
}

```

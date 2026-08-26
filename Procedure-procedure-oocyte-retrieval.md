# procedure-oocyte-retrieval - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-oocyte-retrieval**

## Example Procedure: procedure-oocyte-retrieval

Profile: [Procedure: EE VRIS Oocyte Retrieval](StructureDefinition-ee-vris-procedure-oocyte-retrieval.md)

**status**: Completed

**category**: Oocyte retrieval

**code**: Oocyte recovery

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurrence**: 2025-03-25 09:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**outcome**: Successful

**note**: 

> 

Punktsioon teostatud edukalt, saadi 8 munarakku.


### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: extension = 2025-02-20,Meditsiiniline põhjus,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216),; productCode = Munarakk; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-oocyte-retrieval",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-oocyte-retrieval"]
  },
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Oocyte retrieval"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "177037000"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "occurrenceDateTime" : "2025-03-25T09:00:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Successful"
    }]
  },
  "note" : [{
    "text" : "Punktsioon teostatud edukalt, saadi 8 munarakku."
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/oocyte1"
    }
  }]
}

```

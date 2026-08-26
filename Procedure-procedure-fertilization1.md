# procedure-fertilization1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-fertilization1**

## Example Procedure: procedure-fertilization1

Profile: [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md)

**status**: Completed

**category**: Fertilization

**code**: IVF

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurrence**: 2025-03-25 14:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**outcome**: Successful fertilization

**note**: 

> 

6 munarakku 8-st viljastusid edukalt IVF meetodil.


### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: extension = 2025-02-20,Meditsiiniline põhjus,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216),; productCode = Munarakk; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md) |
| * | [BiologicallyDerivedProduct: extension = 2025-02-20,For donation,->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Seemnerakud; biologicalSourceEvent = ABC123; productStatus = available (available)](BiologicallyDerivedProduct-sperm1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-fertilization1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization"]
  },
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Fertilization"
    }]
  }],
  "code" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "IVF"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "occurrenceDateTime" : "2025-03-25T14:00:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "outcome" : {
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Successful fertilization"
    }]
  },
  "note" : [{
    "text" : "6 munarakku 8-st viljastusid edukalt IVF meetodil."
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/oocyte1"
    }
  },
  {
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1"
    }
  }]
}

```

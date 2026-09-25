# procedure-fertilization1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **procedure-fertilization1**

## Example Procedure: procedure-fertilization1

Profile: [Procedure: EE VRIS Fertilization](StructureDefinition-ee-vris-procedure-fertilization.md)

**basedOn**: [CarePlan IVF tsükkel #1 Märts 2025](CarePlan-carePlanIvfCycle2025.md)

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
| * | [BiologicallyDerivedProduct: extension = ->Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216); productCode = Munarakk; biologicalSourceEvent = OOC123; productStatus = available (available)](BiologicallyDerivedProduct-oocyte1.md) |
| * | [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-2; biologicalSourceEvent = ABC123; division = 2; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-2.md) |

**supportingInfo**: 

* [Procedure: status = completed; category = allocation; occurrence[x] = 2025-03-25 14:00:00+0200](Procedure-allocation-oocyte1-1.md)
* [Procedure: status = stopped; statusReason = ; category = allocation; occurrence[x] = 2025-03-25 14:00:00+0200; note = Broneeritud retsipiendile, ravitsüklit veel ei ole](Procedure-allocation-sperm1-3.md)



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "procedure-fertilization1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-fertilization"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/carePlanIvfCycle2025"
  }],
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
      "reference" : "BiologicallyDerivedProduct/sperm1-2"
    }
  }],
  "supportingInfo" : [{
    "reference" : "Procedure/allocation-oocyte1-1"
  },
  {
    "reference" : "Procedure/allocation-sperm1-3"
  }]
}

```

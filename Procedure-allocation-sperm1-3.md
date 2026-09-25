# allocation-sperm1-3 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **allocation-sperm1-3**

## Example Procedure: allocation-sperm1-3

Profile: [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md)

**basedOn**: [CarePlan IVF tsükkel #1 Märts 2025](CarePlan-carePlanIvfCycle2025.md)

**status**: Stopped

**statusReason**: Tsükkel katkestatud, materjal vabastatud

**category**: allocation

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurrence**: 2025-03-25 14:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**note**: 

> 

Broneeritud retsipiendile, ravitsüklit veel ei ole


### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: productCode = Seemnerakud; identifier = ABC123-3; biologicalSourceEvent = ABC123; division = 3; productStatus = available (available); storageTempRequirements = 196 to 196 -196 °C](BiologicallyDerivedProduct-sperm1-3.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "allocation-sperm1-3",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-allocation"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/carePlanIvfCycle2025"
  }],
  "status" : "stopped",
  "statusReason" : {
    "text" : "Tsükkel katkestatud, materjal vabastatud"
  },
  "category" : [{
    "coding" : [{
      "system" : "https://fhir.ee/ValueSet/vris-protseduuri-kategooria",
      "code" : "allocation"
    }]
  }],
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "occurrenceDateTime" : "2025-03-25T14:00:00+02:00",
  "performer" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "note" : [{
    "text" : "Broneeritud retsipiendile, ravitsüklit veel ei ole"
  }],
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/sperm1-3"
    }
  }]
}

```

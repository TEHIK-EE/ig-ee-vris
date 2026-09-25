# allocation-oocyte1-1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **allocation-oocyte1-1**

## Example Procedure: allocation-oocyte1-1

Profile: [Procedure: EE VRIS Allocation](StructureDefinition-ee-vris-procedure-allocation.md)

**basedOn**: [CarePlan IVF tsükkel #1 Märts 2025](CarePlan-carePlanIvfCycle2025.md)

**status**: Completed

**category**: allocation

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurrence**: 2025-03-25 14:00:00+0200

### Performers

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

### Useds

| | |
| :--- | :--- |
| - | **Reference** |
| * | [BiologicallyDerivedProduct: productCode = Munarakk; identifier = OOC123-1; biologicalSourceEvent = OOC123; division = 1; productStatus = unavailable (unavailable); expirationDate = 2025-02-20 18:00:00+0200](BiologicallyDerivedProduct-oocyte1-1.md) |



## Resource Content

```json
{
  "resourceType" : "Procedure",
  "id" : "allocation-oocyte1-1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-procedure-allocation"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/carePlanIvfCycle2025"
  }],
  "status" : "completed",
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
  "used" : [{
    "reference" : {
      "reference" : "BiologicallyDerivedProduct/oocyte1-1"
    }
  }]
}

```

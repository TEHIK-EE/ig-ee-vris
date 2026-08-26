# female-fertility-indication-example1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **female-fertility-indication-example1**

## Example Condition: female-fertility-indication-example1

Profile: [Condition: EE VRIS Female Fertility Treatment Indication](StructureDefinition-ee-vris-condition-fertility-indication-female.md)

**clinicalStatus**: Active

**verificationStatus**: Confirmed

**code**: Anovulatsiooniga seotud naisinfertiiilsus

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**onset**: 2023-06-15

**recordedDate**: 2023-06-20

### Participants

| | |
| :--- | :--- |
| - | **Actor** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |

**note**: 

> 

Patsiendil diagnoositud ovulatsioonihäire. Hormoonravi alustatud juunis 2023.




## Resource Content

```json
{
  "resourceType" : "Condition",
  "id" : "female-fertility-indication-example1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-condition-fertility-indication-female"]
  },
  "clinicalStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-clinical",
      "code" : "active"
    }]
  },
  "verificationStatus" : {
    "coding" : [{
      "system" : "http://terminology.hl7.org/CodeSystem/condition-ver-status",
      "code" : "confirmed"
    }]
  },
  "code" : {
    "coding" : [{
      "system" : "https://fhir.ee/CodeSystem/rhk-10",
      "code" : "N97.0",
      "display" : "Anovulatsiooniga seotud naisinfertiiilsus"
    }]
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "onsetDateTime" : "2023-06-15",
  "recordedDate" : "2023-06-20",
  "participant" : [{
    "actor" : {
      "reference" : "PractitionerRole/practitionerrole-doctor"
    }
  }],
  "note" : [{
    "text" : "Patsiendil diagnoositud ovulatsioonihäire. Hormoonravi alustatud juunis 2023."
  }]
}

```

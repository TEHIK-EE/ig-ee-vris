# medicationAdministrationFollitropin1 - VRIS - Viljatusravi infosüsteem v0.1.0

* [**Table of Contents**](toc.md)
* [**Artifacts Summary**](artifacts.md)
* **medicationAdministrationFollitropin1**

## Example MedicationAdministration: medicationAdministrationFollitropin1

Profile: [MedicationAdministration: EE VRIS Medication administred during procedure(s)](StructureDefinition-ee-vris-medication-administration.md)

**basedOn**: [CarePlan IVF tsükkel #1 Märts 2025](CarePlan-carePlanIvfCycle2025.md)

**status**: Completed

**category**: Outpatient medication administration

### Medications

| | |
| :--- | :--- |
| - | **Concept** |
| * | Gonal-F |

**subject**: [Leena Lööve (official) Female, DoB: 1983-01-11 ( https://fhir.ee/sid/pid/est/ni#38301105216)](Patient-patientFemale.md)

**occurence**: 2025-03-18 08:30:00+0200

**recorded**: 2025-03-18 08:35:00+0200

> **performer****function**: Nurse

### Actors

| | |
| :--- | :--- |
| - | **Reference** |
| * | [PractitionerRole: identifier = https://fhir.ee/sid/pro/est/pho#D99876; period = 2008-01-01 --> (ongoing)](PractitionerRole-practitionerrole-doctor.md) |


### Reasons

| | |
| :--- | :--- |
| - | **Concept** |
| * | Controlled ovarian stimulation |

**note**: 

> 

Stimulatsiooni 5. päev. Patsient talub ravimit hästi.


### Dosages

| | | | |
| :--- | :--- | :--- | :--- |
| - | **Text** | **Route** | **Dose** |
| * | 150 IU subkutaanselt kord päevas | Subcutaneous route | 150 IU (Details: UCUM code[iU] = '[iU]') |



## Resource Content

```json
{
  "resourceType" : "MedicationAdministration",
  "id" : "medicationAdministrationFollitropin1",
  "meta" : {
    "profile" : ["https://fhir.ee/vris/StructureDefinition/ee-vris-medication-administration"]
  },
  "basedOn" : [{
    "reference" : "CarePlan/carePlanIvfCycle2025"
  }],
  "status" : "completed",
  "category" : [{
    "coding" : [{
      "system" : "http://snomed.info/sct",
      "code" : "TODO",
      "display" : "Outpatient medication administration"
    }]
  }],
  "medication" : {
    "concept" : {
      "coding" : [{
        "system" : "https://fhir.ee/CodeSystem/atc-ee",
        "code" : "G03GA05",
        "display" : "Gonal-F"
      }]
    }
  },
  "subject" : {
    "reference" : "Patient/patientFemale"
  },
  "occurenceDateTime" : "2025-03-18T08:30:00+02:00",
  "recorded" : "2025-03-18T08:35:00+02:00",
  "performer" : [{
    "function" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "TODO",
        "display" : "Nurse"
      }]
    },
    "actor" : {
      "reference" : {
        "reference" : "PractitionerRole/practitionerrole-doctor"
      }
    }
  }],
  "reason" : [{
    "concept" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "732970000",
        "display" : "Controlled ovarian stimulation"
      }]
    }
  }],
  "note" : [{
    "text" : "Stimulatsiooni 5. päev. Patsient talub ravimit hästi."
  }],
  "dosage" : {
    "text" : "150 IU subkutaanselt kord päevas",
    "route" : {
      "coding" : [{
        "system" : "http://snomed.info/sct",
        "code" : "34206005",
        "display" : "Subcutaneous route"
      }]
    },
    "dose" : {
      "value" : 150,
      "unit" : "IU",
      "system" : "http://unitsofmeasure.org",
      "code" : "[iU]"
    }
  }
}

```

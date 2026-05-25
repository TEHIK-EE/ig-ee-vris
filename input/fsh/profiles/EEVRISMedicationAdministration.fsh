Profile: EEVRISMedicationAdministration
Parent: MedicationAdministration
Id: ee-vris-medication-administration
Title: "MedicationAdministration: EEVRIS Medication administred during procedure(s)"
Description: "Profile for medication administration during inferitility procedure. (ee Ravitsükli või protseduuri käigus manustatud ravim(id).)"
* id 0..1
* meta 0..1
* implicitRules 0..1
* language 0..1
* text 0..1
* contained 0..*
* extension 0..*
* modifierExtension 0..*
* identifier 0..*
* basedOn 0..*
* partOf 0..*
* status 1..1
* statusReason 0..*
* category 0..*
* medication 1..1
* subject 1..1
* encounter 0..1
* supportingInformation 0..*
* occurence[x] 1..1
* recorded 0..1
* isSubPotent 0..1
* subPotentReason 0..*
* performer 0..*
* performer.id 0..1
* performer.extension 0..*
* performer.modifierExtension 0..*
* performer.function 0..1
* performer.actor 1..1
* reason 0..*
* request 0..1
* device 0..*
* note 0..*
* dosage 0..1
* dosage.id 0..1
* dosage.extension 0..*
* dosage.modifierExtension 0..*
* dosage.text 0..1
* dosage.site 0..1
* dosage.route 0..1
* dosage.method 0..1
* dosage.dose 0..1
* dosage.rate[x] 0..1
* eventHistory 0..*
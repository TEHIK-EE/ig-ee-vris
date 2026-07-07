Profile: EEVRISMedicationAdministration
Parent: MedicationAdministration
Id: ee-vris-medication-administration
Title: "MedicationAdministration: EE VRIS Medication administred during procedure(s)"
Description: "Profile for medication administration during infertility procedure(s). (ee Viljatusravi ajal manustatud ravim(id).) "
* identifier 0..*
* basedOn 0..*
* basedOn ^short = "(ee Siia tuleb viide ravitsüklile, millest tuleneb ravimi(te) manustamine.)"
* basedOn only Reference(EEVRISCarePlan)
* partOf 0..*
* partOf ^short = "(ee Juhul kui ravimi manustamine on mingi protseduuri osa, siis siia viide sellele protseduurile.)"
* partOf only Reference(EEVRISProcedure)
* status 1..1
* statusReason 0..*
* category 0..*
* medication 1..1
* medication ^short = "(ee KAS paneme viite loendile ja ATC? seda pole termserveris... tuleb MedIn liidestus teha? Või uus LOEND teatud kindlatest ravimitest... SNOMED?)"
* subject 1..1
* subject ^short = "(ee Siia PATSIENDi viide, kes sai ravimit.)"
* encounter 0..1
* supportingInformation 0..*
* occurence[x] 1..1
* occurence[x] ^short = "(ee Aeg, millal ravim manustati.)"
* recorded 0..1
* isSubPotent 0..0
* subPotentReason 0..0
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
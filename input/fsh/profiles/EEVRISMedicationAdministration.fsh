Profile: EEVRISMedicationAdministration
Parent: MedicationAdministration
Id: ee-vris-medication-administration
Title: "MedicationAdministration: EEVRIS Medication administred during procedure(s)"
* identifier 0..*
* basedOn 0..*
* basedOn ^short = "(ee Siia tuleb viide ravitsükklile, millest tuleneb ravimi(te) manustamine.)"
* partOf 0..*
* partOf ^short = "(ee Juhul kui ravimi manustamine on mingi protseduuri osa, siis siia viide sellele protseduurile.)"
* status 1..1
* statusReason 0..*
* category 0..*
* medication 1..1
* medication ^short = "(ee KAS paneme viite loendile ja ATC? seda pole termserveris... tuleb MedIn liidestus teha?)"
* subject 1..1
* subject ^short = "(ee Siia PATSIENT, kes sai ravimit.)"
* encounter 0..1
* supportingInformation 0..*
* occurence[x] 1..1
* occurence[x] ^short = "(ee Aeg, millal ravim manustati.)"
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
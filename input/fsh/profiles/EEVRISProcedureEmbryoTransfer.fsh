Profile: EEVRISProcedureEmbryoTransfer
Parent: EEVRISProcedure
Id: ee-vris-procedure-embryo-transfer
Title: "Procedure: EE VRIS Embryo Transfer"
Description: "Procedure for embryo transfer to recipient. Records transfer date, number of embryos, outcome, or reason for non-transfer. (ee Embrüo siirdamise protseduur.)"
* ^status = #draft

* category 1..1
* category ^short = "(ee Kategooria: embrüo siirdamine)"

* code 1..1
* code.text = "TODO: SNOMED CT otsi 'embryo transfer'"
* code ^short = "(ee NB! SNOMED kood vajab kontrolli)"

* subject 1..1
* subject only Reference(EEVRISRecipient)
* subject ^short = "(ee Retsipient, kellele embrüo siirdati)"

* status 1..1
* status ^short = "(ee completed = siirdamine toimus, not-done = ei toimunud)"

* statusReason 0..1
//* statusReason from $vris-no-embryo-transfer-reason (preferred)
* statusReason ^short = "(ee Kui status = not-done, siia mitte siirdamise põhjus. VAJA LOEND!)"

* occurrence[x] 1..1
* occurrence[x] only dateTime
* occurrence[x] ^short = "(ee Embrüo siirdamise kuupäev)"

* complication only CodeableReference(EEVRISConditionTreatmentComplication)
* performer 1..*
* performer.actor 1..1

* outcome 0..1
//* outcome from $vris-embryo-transfer-outcome (preferred)
* outcome ^short = "(ee Siirdamise tulemus)"

* used 0..*
* used only CodeableReference(EEVRISEmbryo)
* used ^short = "(ee Viide siirdatud embrüo(de)le)"

* note 0..*
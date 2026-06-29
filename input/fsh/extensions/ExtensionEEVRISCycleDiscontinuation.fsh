Extension: ExtensionEEVRISCycleDiscontinuationReason
Id: ee-vris-cycle-discontinuation-reason
Title: "VRIS Cycle Discontinuation Reason"
Description: "Reason for fertility treatment cycle discontinuation. (ee Ravitsükli katkestamise põhjus.)"
Context: CarePlan
* ^context.type = #element
* ^status = #draft

* value[x] only CodeableConcept
* valueCodeableConcept from $vris-cycle-discontinuation-reason (required)
* valueCodeableConcept ^short = "(ee Katkestamise põhjus loendist. NB! Loend vaja teha!)"
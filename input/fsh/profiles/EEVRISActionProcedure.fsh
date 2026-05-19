Profile: EEVRISActionProcedure
Parent: Procedure
Id: ee-vris-action-procedure
Title: "Action profile"
Description: "Procedure that is related to different actions related to biologic material. E.g freezing, destroying, donating, dispensing... "

* identifier 0..*
* instantiatesCanonical 0..*
* instantiatesUri 0..*
* basedOn 0..*
* partOf 0..*
* status 1..1   // required: preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|unknown
* statusReason 0..1
* statusReason ^short = "MITTE Siirdamise põhjus. LOEND"
* category 0..*
* category ^short = "(ee Kategooria määrab ära kas tegu on külmutamise, hävitamise, annetamise või väljastamisega. LOEND VAJA!)"
* code 0..1
* subject 1..1   // required: Patient|Group|Device|Practitioner|Organization|Location
* focus 0..1   // uus R5-s
* encounter 0..1
* occurrence[x] 0..1  
* occurrence[x] ^short = "Viljastamise kuupäev/siirdamise kuupäev" // occurrenceDateTime | occurrencePeriod | occurrenceString | occurrenceAge | occurrenceRange | occurrenceTiming
* recorded 0..1
* recorder 0..1
* reported[x] 0..1   // reportedBoolean | reportedReference
* performer 0..*
* performer.function 0..1
* performer.actor 1..1   // required
* performer.onBehalfOf 0..1
* performer.period 0..1   // uus R5-s

* location 0..1
* reason 0..*   // CodeableReference; asendas R4 reasonCode + reasonReference
* reason 
* bodySite 0..*
* outcome 0..1
* outcome ^short = "Inseminatsiooni/... tulemus. Nb! LOEND"
* report 0..*
* complication 0..*
* complication ^short = "Tüsistused. NB! LOEND"   // CodeableReference(Condition); R5 uus tüüp
* followUp 0..*
* note 0..*
* focalDevice 0..*
* focalDevice.action 0..1
* focalDevice.manipulated 1..1   // required

* used 0..*
* used ^short = "(ee Siia referents biolooogilisele materjalile mille ümber protseduur toimub)"
* supportingInfo 0..*   // uus R5-s
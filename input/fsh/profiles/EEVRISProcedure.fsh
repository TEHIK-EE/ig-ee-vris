Profile: EEVRISProcedure
Parent: Procedure
Id: ee-vris-procedure
Title: "Procedure: EE VRIS Procedure"
Description: "Base profile for Procedure. For each specific procedure use their profiles(freezing, destroying, donating, dispensing etc)... (ee Baasprofiil erinevate protseduuride kirjeldamiseks. (Nt. Külmutamine, annetamine...)) "
* identifier 0..*
* instantiatesCanonical 0..*
* instantiatesUri 0..*
* basedOn 0..*
* partOf 0..*
* status 1..1   // required: preparation|in-progress|not-done|on-hold|stopped|completed|entered-in-error|unknown
* status ^short = "(ee See on kohustuslik!)"
* statusReason 0..1
* statusReason ^short = "(ee STAATUSE Põhjuste LOEND?)"
* category 0..*
* category ^short = "(ee Kategooria määrab ära kas tegu on külmutamise, hävitamise, annetamise või väljastamisega. LOENDit VAJA! Igal profiilil fix kood)"
* code 0..1
* subject 1..1
* subject ^short = "(ee Siia tuleb viide KELLELE protseduur tehti.)"
* focus 0..1
* focus ^short = "(ee Kui on vaja lisaks subjektile teist patsienti ka. Nt. doonori viide siia, retsipiendi viide subject-i alla?)"
* encounter 0..1
* occurrence[x] 0..1  
* occurrence[x] ^short = "(ee Kuupäev, millal tegevus toimus)"
* recorded 0..1
* recorder 0..1
* reported[x] 0..1   // reportedBoolean | reportedReference
* performer 0..*
* performer.function 0..1
* performer.actor 1..1   
* performer.onBehalfOf 0..1
* performer.period 0..1
* reason 0..*
* reason ^short = "(ee Näiteks: Hävitamise põhjus, mitte-siirdamise põhjus jne. LOEND(id?))"
* bodySite 0..0
* outcome 0..1
* outcome ^short = "(ee Tegevuse/toimingu/protseduuri/jne jne... TULEMUS. Nb! LOEND)"
* complication 0..*
* complication ^short = "(ee TÜSISTUS. Referents Condition-ressursile või loend. NB! LOEND vajalik)"   // CodeableReference(Condition); R5 uus tüüp
* followUp 0..*
* note 0..*
* note ^short = "(ee lisainfo)"
* focalDevice 0..0
* used 0..*
* used ^short = "(ee Siia referents biolooogilisele materjalile sperma/embrüo/munarakk, mille ümber protseduur toimub)"
* supportingInfo 0..*
* supportingInfo ^short = "(ee siia saab panna ükskõik mis referentsi kui vaja! Nt SupplyDelivery?)"
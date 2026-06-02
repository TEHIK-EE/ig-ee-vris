Profile: EEVRISCarePlan
Parent: CarePlan
Id: ee-vris-care-plan
Title: "CarePlan: EEVRIS Cycle"
Description: "Profile for capturing infertility treatment cycle(s) on woman. (ee Ravisükkel. VÄRSKE või KÜLMUTATUD-SULATATUD)"
* identifier 0..*
* instantiatesCanonical 0..0
* instantiatesUri 0..0
* basedOn 0..*
* basedOn ^short = "KAS SIIA viide varasematele tsükklitele? SEOS?"
* replaces 0..*
* replaces
* partOf 0..*
* status 1..1
* intent 1..1
* category 0..*
* category ^short = "(ee Siia LOEND, mis tüüpi ravitsükkel on. |Värske tsükkel|Külmutatud embrüo siirdamine|Emakasisene inseminatsioon (IUI))"
* title 0..1
* description 0..1
* subject 1..1
* subject only Reference(EEVRISRecipient)
* encounter 0..1
* period 0..1
* period ^short = "(ee Tsükli alguskuupäev. KAS lõppu pole vaja?)"
* period.start 1..1
* created 0..1
* custodian 0..0
* contributor 0..0
* careTeam 0..0
* addresses 0..*
* supportingInfo 0..*
* supportingInfo ^short = "(ee siia äkki partneri seos?)"
* goal 0..0
* activity 0..*
* activity ^short = "(ee Siin on (kõik) protseduurid, mida viljastumiseks tehti. Lisaks viited ravimitele MedicationAdministration profiiliga?)"
* activity.id 0..1
* activity.extension 0..*
* activity.modifierExtension 0..*
* activity.performedActivity 0..*
* activity.performedActivity only CodeableReference(EEVRISProcedure)
* activity.progress 0..*
* activity.plannedActivityReference 0..0
* note 0..*
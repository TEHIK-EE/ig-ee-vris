Profile: EEVRISCarePlan
Parent: CarePlan
Id: ee-vris-care-plan
Title: "CarePlan: EEVRIS Cycle"
Description: "Profile for capturing infertility treatment cycle(s) on woman. (ee Ravisükkel. VÄRSKE või KÜLMUTATUD-SULATATUD)"
* extension contains
    ExtensionEEVRISCycleDiscontinuationReason named cycleDiscontinuationReason 0..1
* extension[cycleDiscontinuationReason] ^short = "(ee Täidetakse kui status = revoked. Katkestamise põhjus.)"
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
* subject only Reference(EEVRISRecipient or $mpi-patient)
* encounter 0..1
* encounter ^short = "(ee Viide VISIIDILE/KONTAKTILE. Encounter-EoC-teenus, siis kui valmis!)"
* period 0..1
* period ^short = "(ee Tsükli alguskuupäev. KAS lõppu pole vaja?)"
* period.start 1..1
* created 0..1
* created ^short = "(ee KAS sed on vaja, dokumenteerimise alguspäev?)"
* custodian 0..1
* custodian ^short = "(ee KES vastutab, ehk viide arstile, SPD-st!)"
* contributor 0..0
* careTeam 0..0
* addresses 0..*
* addresses only CodeableReference(EEVRISConditionFertilityIndicationFemale or EEVRISConditionFertilityIndicationMale)
* supportingInfo 0..*
* supportingInfo ^short = "(ee siia äkki partneri seos? VÕI Haigekassa rahastuse viide?)"
* supportingInfo ^slicing.discriminator.type = #type
* supportingInfo ^slicing.discriminator.path = "resolve()"
* supportingInfo ^slicing.rules = #open
* supportingInfo ^slicing.ordered = false
* supportingInfo ^slicing.description = "(ee Lisateave – partner, rahastusallikas vms)"

* supportingInfo contains
    partner 0..1 and
    coverage 0..* and
    other 0..*

* supportingInfo[partner] only Reference(EEVRISRelatedPerson or EEVRISRecipient)
* supportingInfo[partner] ^short = "(ee Partneri viide, RelatedPerson või Patient)"

* supportingInfo[coverage] only Reference(EEVRISCoverage)
* supportingInfo[coverage] ^short = "(ee Rahastusallika viide, kui on Tervisekassa rahastatud)"

* supportingInfo[other] only Reference(Resource)
* supportingInfo[other] ^short = "(ee Muud lisaviited vajadusel)"
* goal 0..0
* activity 0..*
* activity ^short = "(ee Siin on (kõik) protseduurid, mida viljastumiseks TEHTI. Lisaks viited ravimitele MedicationAdministration profiiliga?)"
* activity.id 0..1
* activity.performedActivity ^slicing.discriminator[0].type = #type
* activity.performedActivity ^slicing.discriminator[0].path = "reference"
* activity.performedActivity ^slicing.rules = #open
* activity.performedActivity contains
    medicationAdministration 0..* and
    procedure 0..* and
    observation 0..*
* activity.performedActivity[medicationAdministration] only CodeableReference(EEVRISMedicationAdministration)
* activity.performedActivity[procedure] only CodeableReference(EEVRISProcedure)
* activity.performedActivity[observation] only CodeableReference(EEVRISObservationStimulationProtocol)
* activity.extension 0..*
* activity.modifierExtension 0..*
//* activity.performedActivity 0..*
//* activity.performedActivity only CodeableReference(EEVRISProcedure)
* activity.progress 0..*
* activity.plannedActivityReference 0..0
* note 0..*
* note ^short = "(ee Kui on vaja veel midagi lisada.)"
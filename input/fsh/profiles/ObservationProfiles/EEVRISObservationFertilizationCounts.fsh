Profile: EEVRISObservationFertilizationCounts
Parent: Observation
Id: ee-vris-observation-fertilization-counts
Title: "Observation: EE VRIS Fertilization Counts"
Description: "Counts of oocytes used and fertilized during fertilization procedure. (ee Viljastamise protseduuri munarakkude arvud erinevates staadiumites.)"
* ^status = #draft

* status = #final
//* category 1..*
//* category = $obsCategory#laboratory
* code 1..1
* code.text = "TODO: SNOMED CT otsi 'oocyte fertilization counts' või sarnane"
* code ^short = "(ee NB! SNOMED kood vajab kontrolli)"

* subject 1..1
* subject only Reference(EEVRISRecipient or EEVRISDonor or EEVRISDonorAnonymous)
* subject ^short = "(ee Patsient, kelle munarakkudega tehti toiminguid. KAS viitame patsiendile VÕI focuse kaudu rakule. OTSUSTUSKOHT!?!?!)"

* effective[x] 1..1
* effective[x] only dateTime
* effective[x] ^short = "(ee Mõõtmise/hindamise aeg)"

* focus only Reference(EEVRISOocyte)

* partOf 0..*
* partOf only Reference(EEVRISProcedureFertilization)
* partOf ^short = "(ee Viide protseduurile, mille raames arvud salvestati)"

* value[x] 0..0
* note 0..*

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component contains
    mIIOocyteCountICSI 0..1 and
    usedOocyteCountIVF 0..1 and
    usedMIIOocyteCountICSI 0..1 and
    correctlyFertilizedPN2 0..1 and
    ivfFertilizedMIIOocyteCount 0..1

* component[mIIOocyteCountICSI] ^short = "(ee Metafaas II MII munarakkude arv ICSI)"
* component[mIIOocyteCountICSI].code.text = "TODO: SNOMED CT kood puudu!"
* component[mIIOocyteCountICSI].value[x] only integer

* component[usedOocyteCountIVF] ^short = "(ee Viljastamiseks kasutatud munarakkude arv IVF)"
* component[usedOocyteCountIVF].code.text = "TODO: SNOMED CT kood puudu!"
* component[usedOocyteCountIVF].value[x] only integer

* component[usedMIIOocyteCountICSI] ^short = "(ee Viljastamiseks kasutatud MII munarakkude arv ICSI)"
* component[usedMIIOocyteCountICSI].code.text = "TODO: SNOMED CT kood puudu!"
* component[usedMIIOocyteCountICSI].value[x] only integer

* component[correctlyFertilizedPN2] ^short = "(ee Korrektselt viljastunud munarakkude arv PN2)"
* component[correctlyFertilizedPN2].code.text = "TODO: SNOMED CT kood puudu!"
* component[correctlyFertilizedPN2].value[x] only integer

* component[ivfFertilizedMIIOocyteCount] ^short = "(ee IVF meetodil viljastatud MII munarakkude arv)"
* component[ivfFertilizedMIIOocyteCount].code.text = "TODO: SNOMED CT kood puudu!"
* component[ivfFertilizedMIIOocyteCount].value[x] only integer

/* Invariandid kontrolliks
* obeys vris-fert-counts-1
* obeys vris-fert-counts-2

* bodySite 0..0
* specimen 0..0
* device 0..0
* triggeredBy 0..0
* instantiates[x] 0..0
* encounter 0..0
* issued 0..0
* dataAbsentReason 0..0
* interpretation 0..0
*/
Profile: EEVRISObservationChildCount
Parent: Observation
Id: ee-vris-observation-child-count
Title: "Observation: EE VRIS Child Count"
Description: "Count of children/pregnancies fom one donor. (ee Ühe anonüümse või mittepartnerist doonori doonorrakkudest saadud raseduste ja sündinud laste arv ning nende naiste arv, kellel on säilitatud embrüoid, mis on loodud nimetatud doonori doonorrakkudest ja mida võidakse tulevikus kasutada raseduse saavutamiseks.)"
* meta.source ^short = "(ee Siia tuleb viide, kui andmed on pärit Rahvastikuregistrist)"
* basedOn 0..0
* partOf 0..0
* status 1..1
* code 1..1
* code ^short = "(ee Sündinud laste arv.)"
* code = $vris-observation-code#237231000181104 //|Laste arv ühelt doonorilt|
* subject 1..1
* subject only Reference(EEVRISRecipient or $mpi-patient)
* subject ^short = "(ee Patient retsipient või partner (kelle laste arv))"
* focus 0..0
* encounter 0..0
* effective[x] 0..1
* issued 0..1
* issued ^short = "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
* performer 0..*
* performer ^short = "(ee Kes salvestas. NB! Viide SPD-le!)"
* value[x] 1..1
* value[x] only integer
* value[x] ^short = "(ee Laste arv ühe doonori kohta. KALKULATSIOON eri observationite jm põhjalt)"
//* valueQuantity.value 1..1
* interpretation 0..0
* note 0..*
* note ^short = "(ee Lisainfo / märkused)"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..0
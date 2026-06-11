Profile: EEVRISObservationObstetricHistory
Parent: Observation
Id: ee-vris-observation-obstetric-history
Title: "Observation: EE VRIS Obstetric History"
Description: "Obstetric history for fertility patients. Records prior pregnancies, deliveries, live births and stillbirths. (ee Sünnitusanamnees: varasemate raseduste, sünnituste ja sündide arv)"
* ^status = #draft

* basedOn 0..0
* partOf 0..0
* status 1..1
* status ^short = "Observation status"
* category 0..*
* category ^short = "Observation category"
* code 1..1
//* code = $vris-anamnesis-code-CS#obstetric-history
* code ^short = "(ee Sünnitusanamnees. Vaja LOENDIT või kasutame LOINC?)"
* subject 1..1
* subject only Reference(EEVRISRecipient)
* subject ^short = "(ee Patient retsipient või partner (kellel on sünnitusanamnees))"
* focus 0..0
* encounter 0..0
* effective[x] 0..1
* effective[x] ^short = "(ee Anamneesi kogumise kuupäev)"
* issued 0..1
* issued ^short = "(ee Süsteemi sisestamise kuupäev/kellaaeg)"
* performer 0..*
* performer ^short = "(ee Kes salvestas)"
* value[x] 0..0
* dataAbsentReason 0..0
* interpretation 0..0
* note 0..*
* note ^short = "Lisainfo / märkused"
* bodySite 0..0
* bodyStructure 0..0
* method 0..0
* specimen 0..0
* device 0..0
* referenceRange 0..0
* hasMember 0..0
* derivedFrom 0..*
* derivedFrom ^short = "Viide allikale (nt RR päring)"

* component ^slicing.discriminator.type = #value
* component ^slicing.discriminator.path = "code"
* component ^slicing.rules = #open
* component ^slicing.ordered = false
* component ^slicing.description = "Sünnitusanamneesi komponendid"
* component contains
    priorPregnanciesCount 0..1 and
    priorDeliveriesCount 0..1 and
    liveBirthsCount 0..1 and
    stillbirthsCount 0..1 and
    primaryInfertility    0..1

* component[priorPregnanciesCount] ^short = "Varasemate raseduste arv"
* component[priorPregnanciesCount].code = $obstetric-component-CS#prior-pregnancies-count
* component[priorPregnanciesCount].code ^short = "Prior pregnancies count"
* component[priorPregnanciesCount].value[x] only integer
* component[priorPregnanciesCount].value[x] ^short = "Varasemate raseduste arv"
* component[priorPregnanciesCount].dataAbsentReason 0..1
* component[priorPregnanciesCount].dataAbsentReason ^short = "Kasuta #unknown kui 'Varasemate raseduste arv pole teada' on märgitud"
* component[priorPregnanciesCount].interpretation 0..0
* component[priorPregnanciesCount].referenceRange 0..0

* component[priorDeliveriesCount] ^short = "Varasemate sünnituste arv"
* component[priorDeliveriesCount].code = $obstetric-component-CS#prior-deliveries-count
* component[priorDeliveriesCount].code ^short = "Prior deliveries count"
* component[priorDeliveriesCount].value[x] only integer
* component[priorDeliveriesCount].value[x] ^short = "Varasemate sünnituste arv (eeltäidetud RR-st, muudetav)"
* component[priorDeliveriesCount].dataAbsentReason 0..1
* component[priorDeliveriesCount].dataAbsentReason ^short = "Kasuta #unknown kui 'Varasemate sünnituste arv pole teada' on märgitud"
* component[priorDeliveriesCount].interpretation 0..0
* component[priorDeliveriesCount].referenceRange 0..0

* component[liveBirthsCount] ^short = "Sündinud laste arv (RR)"
* component[liveBirthsCount].code = $obstetric-component-CS#live-births-count
* component[liveBirthsCount].code ^short = "Live births count"
* component[liveBirthsCount].value[x] only integer
* component[liveBirthsCount].value[x] ^short = "Sündinud laste arv (eeltäidetud RR päringust)"
* component[liveBirthsCount].dataAbsentReason 0..0
* component[liveBirthsCount].interpretation 0..0
* component[liveBirthsCount].referenceRange 0..0

* component[stillbirthsCount] ^short = "Surnult sündinud laste arv (RR)"
* component[stillbirthsCount].code = $obstetric-component-CS#stillbirths-count
* component[stillbirthsCount].code ^short = "Stillbirths count"
* component[stillbirthsCount].value[x] only integer
* component[stillbirthsCount].value[x] ^short = "Surnult sündinud laste arv sh mitmikrasedused (eeltäidetud RR päringust)"
* component[stillbirthsCount].dataAbsentReason 0..0
* component[stillbirthsCount].interpretation 0..0
* component[stillbirthsCount].referenceRange 0..0

* component[primaryInfertility] ^short = "Primaarne (true) või sekundaarne (false) viljatus"
* component[primaryInfertility].code = $obstetric-component-CS#primary-infertility
* component[primaryInfertility].value[x] only boolean
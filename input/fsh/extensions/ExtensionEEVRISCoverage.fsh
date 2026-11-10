Extension: ExtensionEEVRISCoverage
Id: ee-vris-terk-coverage
Title: "Coverage"
Description: "Extension for Tervisekassa coverage existence. (ee Kas (teenusel/ravil/tsüklil/vm on/ei ole Tervisekassa poolset kompensatsiooni patsiendile.)"
Context: CarePlan
* ^context.type = #element
* ^status = #draft

* value[x] only CodeableConcept
* value[x] ^short = "(ee Loendist väärtus jah/ei/kombineeritud)"
* value[x] from $terk-coverage
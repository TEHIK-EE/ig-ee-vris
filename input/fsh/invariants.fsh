
Invariant: vris-bdp-1
Description: "An aliquot must reference its parent product (ee Pakendil peab olema viide vanemmaterjalile)"
Severity: #error
Expression: "division.exists() implies parent.exists()"

Invariant: vris-bdp-2
Description: "Cryopreserved material must have storage temperature requirements (ee Külmutatud materjalil peab olema hoiustamistemperatuur)"
Severity: #error
Expression: "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='cryopreserved' implies storageTempRequirements.exists()"

Invariant: vris-bdp-3
Description: "Fresh material must have an expiration date (ee Värskel materjalil peab olema kehtivusaeg)"
Severity: #error
Expression: "property.where(type.coding.code='preservation-state').value.ofType(CodeableConcept).coding.code='fresh' implies expirationDate.exists()"

Invariant: vris-bdp-4
Description: "Source material must record collection details (ee Lähtematerjalil peavad olema kogumisandmed)"
Severity: #error
Expression: "division.empty() implies collection.exists()"
<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile BiologicallyDerivedProduct
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:BiologicallyDerivedProduct</sch:title>
    <sch:rule context="f:BiologicallyDerivedProduct">
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cryopreservation-date': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/biologicallyderivedproduct-intendedRecipient': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-thawing']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-thawing': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-recryo']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-recryo': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cell-preservation-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:productCode) &gt;= 1">productCode: minimum cardinality of 'productCode' is 1</sch:assert>
      <sch:assert test="count(f:request) &lt;= 0">request: maximum cardinality of 'request' is 0</sch:assert>
      <sch:assert test="count(f:division) &lt;= 0">division: maximum cardinality of 'division' is 0</sch:assert>
      <sch:assert test="count(f:productStatus) &gt;= 1">productStatus: minimum cardinality of 'productStatus' is 1</sch:assert>
      <sch:assert test="count(f:expirationDate) &lt;= 0">expirationDate: maximum cardinality of 'expirationDate' is 0</sch:assert>
      <sch:assert test="count(f:collection) &gt;= 1">collection: minimum cardinality of 'collection' is 1</sch:assert>
      <sch:assert test="count(f:storageTempRequirements) &lt;= 0">storageTempRequirements: maximum cardinality of 'storageTempRequirements' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:BiologicallyDerivedProduct/f:collection</sch:title>
    <sch:rule context="f:BiologicallyDerivedProduct/f:collection">
      <sch:assert test="count(f:source) &gt;= 1">source: minimum cardinality of 'source' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:BiologicallyDerivedProduct/f:property/f:type</sch:title>
    <sch:rule context="f:BiologicallyDerivedProduct/f:property/f:type">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:coding) &gt;= 1">coding: minimum cardinality of 'coding' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 1">text: maximum cardinality of 'text' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

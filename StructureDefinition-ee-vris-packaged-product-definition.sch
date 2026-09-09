<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile PackagedProductDefinition
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition</sch:title>
    <sch:rule context="f:PackagedProductDefinition">
      <sch:assert test="count(f:packageFor) &lt;= 0">packageFor: maximum cardinality of 'packageFor' is 0</sch:assert>
      <sch:assert test="count(f:containedItemQuantity) &lt;= 0">containedItemQuantity: maximum cardinality of 'containedItemQuantity' is 0</sch:assert>
      <sch:assert test="count(f:legalStatusOfSupply) &lt;= 0">legalStatusOfSupply: maximum cardinality of 'legalStatusOfSupply' is 0</sch:assert>
      <sch:assert test="count(f:marketingStatus) &lt;= 0">marketingStatus: maximum cardinality of 'marketingStatus' is 0</sch:assert>
      <sch:assert test="count(f:copackagedIndicator) &lt;= 0">copackagedIndicator: maximum cardinality of 'copackagedIndicator' is 0</sch:assert>
      <sch:assert test="count(f:characteristic) &lt;= 0">characteristic: maximum cardinality of 'characteristic' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:packaging</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:packaging">
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:componentPart) &lt;= 0">componentPart: maximum cardinality of 'componentPart' is 0</sch:assert>
      <sch:assert test="count(f:quantity) &lt;= 0">quantity: maximum cardinality of 'quantity' is 0</sch:assert>
      <sch:assert test="count(f:material) &lt;= 0">material: maximum cardinality of 'material' is 0</sch:assert>
      <sch:assert test="count(f:alternateMaterial) &lt;= 0">alternateMaterial: maximum cardinality of 'alternateMaterial' is 0</sch:assert>
      <sch:assert test="count(f:shelfLifeStorage) &lt;= 0">shelfLifeStorage: maximum cardinality of 'shelfLifeStorage' is 0</sch:assert>
      <sch:assert test="count(f:manufacturer) &lt;= 0">manufacturer: maximum cardinality of 'manufacturer' is 0</sch:assert>
      <sch:assert test="count(f:property) &lt;= 0">property: maximum cardinality of 'property' is 0</sch:assert>
      <sch:assert test="count(f:packaging) &lt;= 0">packaging: maximum cardinality of 'packaging' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:PackagedProductDefinition/f:packaging/f:containedItem</sch:title>
    <sch:rule context="f:PackagedProductDefinition/f:packaging/f:containedItem">
      <sch:assert test="count(f:extension) &lt;= 0">extension: maximum cardinality of 'extension' is 0</sch:assert>
      <sch:assert test="count(f:modifierExtension) &lt;= 0">modifierExtension: maximum cardinality of 'modifierExtension' is 0</sch:assert>
      <sch:assert test="count(f:amount) &gt;= 1">amount: minimum cardinality of 'amount' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

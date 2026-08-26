<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile CarePlan
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:CarePlan</sch:title>
    <sch:rule context="f:CarePlan">
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-cycle-discontinuation-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage']) &lt;= 1">extension with URL = 'https://fhir.ee/vris/StructureDefinition/ee-vris-terk-coverage': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:instantiatesCanonical) &lt;= 0">instantiatesCanonical: maximum cardinality of 'instantiatesCanonical' is 0</sch:assert>
      <sch:assert test="count(f:instantiatesUri) &lt;= 0">instantiatesUri: maximum cardinality of 'instantiatesUri' is 0</sch:assert>
      <sch:assert test="count(f:category) &gt;= 1">category: minimum cardinality of 'category' is 1</sch:assert>
      <sch:assert test="count(f:contributor) &lt;= 0">contributor: maximum cardinality of 'contributor' is 0</sch:assert>
      <sch:assert test="count(f:careTeam) &lt;= 0">careTeam: maximum cardinality of 'careTeam' is 0</sch:assert>
      <sch:assert test="count(f:goal) &lt;= 0">goal: maximum cardinality of 'goal' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:period</sch:title>
    <sch:rule context="f:CarePlan/f:period">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:start) &gt;= 1">start: minimum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:start) &lt;= 1">start: maximum cardinality of 'start' is 1</sch:assert>
      <sch:assert test="count(f:end) &lt;= 1">end: maximum cardinality of 'end' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:CarePlan/f:activity</sch:title>
    <sch:rule context="f:CarePlan/f:activity">
      <sch:assert test="count(f:plannedActivityReference) &lt;= 0">plannedActivityReference: maximum cardinality of 'plannedActivityReference' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

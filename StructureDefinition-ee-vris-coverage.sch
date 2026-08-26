<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Coverage
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Coverage</sch:title>
    <sch:rule context="f:Coverage">
      <sch:assert test="count(f:type) &lt;= 0">type: maximum cardinality of 'type' is 0</sch:assert>
      <sch:assert test="count(f:policyHolder) &lt;= 0">policyHolder: maximum cardinality of 'policyHolder' is 0</sch:assert>
      <sch:assert test="count(f:subscriber) &lt;= 0">subscriber: maximum cardinality of 'subscriber' is 0</sch:assert>
      <sch:assert test="count(f:subscriberId) &lt;= 0">subscriberId: maximum cardinality of 'subscriberId' is 0</sch:assert>
      <sch:assert test="count(f:dependent) &lt;= 0">dependent: maximum cardinality of 'dependent' is 0</sch:assert>
      <sch:assert test="count(f:relationship) &lt;= 0">relationship: maximum cardinality of 'relationship' is 0</sch:assert>
      <sch:assert test="count(f:insurer) &lt;= 0">insurer: maximum cardinality of 'insurer' is 0</sch:assert>
      <sch:assert test="count(f:class) &lt;= 0">class: maximum cardinality of 'class' is 0</sch:assert>
      <sch:assert test="count(f:order) &lt;= 0">order: maximum cardinality of 'order' is 0</sch:assert>
      <sch:assert test="count(f:network) &lt;= 0">network: maximum cardinality of 'network' is 0</sch:assert>
      <sch:assert test="count(f:costToBeneficiary) &lt;= 0">costToBeneficiary: maximum cardinality of 'costToBeneficiary' is 0</sch:assert>
      <sch:assert test="count(f:subrogation) &lt;= 0">subrogation: maximum cardinality of 'subrogation' is 0</sch:assert>
      <sch:assert test="count(f:contract) &lt;= 0">contract: maximum cardinality of 'contract' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>

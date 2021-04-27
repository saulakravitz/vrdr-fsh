[Previous Page - Acknowledgements](acknowledgements.html)

CDCs National Center for Health Statistics is working closely with Federal, State, and local partners to take a fresh look at how mortality data are gathered, stored, and exchanged across the United States. They are focused on adopting best practices for information exchange that lessen the burden on data providers (e.g., vital records offices, medical examiner and coroner offices, toxicology labs) while providing a seamlessly automated data feed to public health and public safety data requestors. 

To help make the mortality data ecosystem more connected, adaptable, and robust, they have chosen to leverage modern technologies and approaches, such as RESTful based APIs and HL7s Fast Healthcare Interoperability Resources (FHIR) standard.

This implementation guide is an initial step to help define a common set of protocols and practices that developers can rely on to enhance their existing products and build solutions to help make mortality data flow more seamlessly.


----------
**Changes since prior release**
----------


1. Added patient-birthPlace extension to resource profile Decedent
1. Modified the terminology binding for the contact.relationship element in the resource profile Decedent to match the HL7v2.6 death reporting IG specification
1. Modified resource profile Cause Of Death Condition to use USCoreCondition as its base profile and include the element condition.category
1. Modified Cause Of Death Condition Example to include the element condition.category
1. Modified resource profile Condition Contributing To Death to use USCoreCondition as its base profile and include the element condition.category
1. Modified Condition Contributing To Death Example to include the element condition.category
1. Added a section on recent change history to the background page.

[Next Page - Death Reporting Dataflow](death_reporting_dataflow.html)
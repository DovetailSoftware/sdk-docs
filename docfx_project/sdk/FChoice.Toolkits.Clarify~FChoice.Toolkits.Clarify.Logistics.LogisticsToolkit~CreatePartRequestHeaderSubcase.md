### CreatePartRequestHeaderSubcase Method

Used to create a new part request header against a subcase.

This overload takes a set of required parameters for the API.

Used to create a new part request header against a subcase.

#### Overload List

| Overload | Description |
| --- | --- |
| [CreatePartRequestHeaderSubcase(String,String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase(String,String,String,String,String).md) | 
Used to create a new part request header against a subcase.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup).md) | 

Used to create a new part request header against a subcase.

This overload takes a setup object.   |
| [CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase(CreatePartRequestHeaderSubcaseSetup,IDbTransaction).md) | 

Used to create a new part request header against a subcase.

This overload takes a setup object and a database transaction.   |

#### Remarks

Use this API to explicitly create part request headers for subcases (as opposed to cases or subcases). This is useful if the case ID numbering scheme contains dashes ('-').

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup~ContractObjid.md) property on the [CreatePartRequestHeaderCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSubcaseSetup", Caption="CreatePartRequestHeaderSubcaseSetup Class"**
     CreatePartRequestHeader Method                                                   

fcSDK Documentation

CreatePartRequestHeader Method

Used to create a new part request header.

This overload takes a set of required parameters for the API.

Used to create a new part request header.

Overload List

| Overload | Description |
| --- | --- |
| [CreatePartRequestHeader(String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeader(String,String,String,String).md) | 
Used to create a new part request header.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestHeader(CreatePartRequestHeaderSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeader(CreatePartRequestHeaderSetup).md) | 

Used to create a new part request header.

This overload takes a setup object.   |
| [CreatePartRequestHeader(CreatePartRequestHeaderSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeader(CreatePartRequestHeaderSetup,IDbTransaction).md) | 

Used to create a new part request header.

This overload takes a setup object and a database transaction.   |

Remarks

If using the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) variant of this API, and if the [CaseIDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup~CaseIDNum.md) property on the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) object is set to a value, and there is a dash ("-") in the identifier, it will be assumed that it is a subcase identifier. Otherwise, it will be treated as a case identifier.

To create a Part Request Header for a case or subcase, without respect for dashes ("-") in the case/subcase identifier, see the [CreatePartRequestHeaderCase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderCase.md) or the [CreatePartRequestHeaderSubcase](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestHeaderSubcase.md) APIs respectively.

**NOTE**: If you have one or more dashes ("-") in your case identifier numbering scheme, you **MUST** use one of the two CreatePartRequestHeaderCase/Subcase variants. Do not use this API (CreatePartRequestHeader) as it will mistakenly identify every case identifier as a subcase.

**NOTE**: The [ContractObjId](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup~ContractObjid.md) property on the [CreatePartRequestHeaderSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup.md) object should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestHeaderSetup", Caption="CreatePartRequestHeaderSetup Class"**
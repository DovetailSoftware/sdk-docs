### CreatePartRequestDetail Method

Used to create a new part request detail.

This overload takes a set of required parameters for the API.

Used to create a new part request detail.

#### Overload List

| Overload | Description |
| --- | --- |
| [CreatePartRequestDetail(String,String,String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(String,String,String,String,Int32).md) | 
Used to create a new part request detail.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestDetail(String,Int32,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(String,Int32,Int32).md) | 

Used to create a new part request detail.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestDetail(String,String,String,String,String)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(String,String,String,String,String).md) | 

Used to create a new part request detail.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestDetail(String,String,Int32)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(String,String,Int32).md) | 

Used to create a new part request detail.

This overload takes a set of required parameters for the API.   |
| [CreatePartRequestDetail(CreatePartRequestDetailSetup)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(CreatePartRequestDetailSetup).md) | 

Used to create a new part request detail.

This overload takes a setup object.   |
| [CreatePartRequestDetail(CreatePartRequestDetailSetup,IDbTransaction)](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail(CreatePartRequestDetailSetup,IDbTransaction).md) | 

Used to create a new part request detail.

This overload takes a setup object and a database transaction.   |

#### Remarks

This API requires a part request header in addition to a part or site_part. If the site_part record is already known, it can be specified using _sitePartObjid_ parameter or the [SitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~SitePartObjid.md) property on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object. Otherwise, the part_num, mod_level, and domain define the part (which can be specified either via parameters to one of this API's overloads, or via the respective properties on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object). If a serialized site_part was specified, the serial number should be specified instead of quantity. Otherwise, the quantity must be specified.

**NOTE**: If using the overload of this API that takes a [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object, the [ContractItemObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~ContractItemObjid.md) property should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and required schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup", Caption="CreatePartRequestDetailSetup Class"**
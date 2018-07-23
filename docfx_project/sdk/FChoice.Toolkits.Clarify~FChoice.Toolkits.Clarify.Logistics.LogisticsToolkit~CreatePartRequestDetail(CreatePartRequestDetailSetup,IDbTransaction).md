### CreatePartRequestDetail(CreatePartRequestDetailSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to create a new part request detail.

This overload takes a setup object and a database transaction.

Syntax

```vbnet
' Declaration

Public Overloads Function CreatePartRequestDetail( _
   ByVal _setupParam_ As [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md)

public [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md) CreatePartRequestDetail( 
   [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

This API requires a part request header in addition to a part or site_part. If the site_part record is already known, it can be specified using _sitePartObjid_ parameter or the [SitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~SitePartObjid.md) property on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object. Otherwise, the part_num, mod_level, and domain define the part (which can be specified either via parameters to one of this API's overloads, or via the respective properties on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object). If a serialized site_part was specified, the serial number should be specified instead of quantity. Otherwise, the quantity must be specified.

**NOTE**: If using the overload of this API that takes a [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object, the [ContractItemObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~ContractItemObjid.md) property should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and required schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

Example

[**Developer Walkthrough - Transaction Support**](/articles/walkthroughs/transaction.md)

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.md)
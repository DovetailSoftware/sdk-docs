     CreatePartRequestDetail(CreatePartRequestDetailSetup) Method                                                   

fcSDK Documentation

CreatePartRequestDetail(CreatePartRequestDetailSetup) Method

Setup object for API invocation.

Used to create a new part request detail.

This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreatePartRequestDetail( _
   ByVal _setupParam_ As [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) _
) As [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md)

public [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md) CreatePartRequestDetail( 
   [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [CreatePartRequestDetailResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult~Objid.md) \- The Objid of the DemandDetail.
*   [DetailNumber](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult~DetailNumber.md) \- Detail Number.

Remarks

This API requires a part request header in addition to a part or site_part. If the site_part record is already known, it can be specified using _sitePartObjid_ parameter or the [SitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~SitePartObjid.md) property on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object. Otherwise, the part_num, mod_level, and domain define the part (which can be specified either via parameters to one of this API's overloads, or via the respective properties on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object). If a serialized site_part was specified, the serial number should be specified instead of quantity. Otherwise, the quantity must be specified.

**NOTE**: If using the overload of this API that takes a [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object, the [ContractItemObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~ContractItemObjid.md) property should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and required schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup", Caption="CreatePartRequestDetailSetup Class"**
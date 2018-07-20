### CreatePartRequestDetail(String,Int32,Int32) Method

Parent Part Request Header Identifier

The number of parts requested

The Objid of the Site Part to which this Part Request will be linked.

Used to create a new part request detail.

This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration
 
Public Overloads Function CreatePartRequestDetail( _
   ByVal _partRequestHeaderIDNum_ As String, _
   ByVal _quantity_ As Integer, _
   ByVal _sitePartObjid_ As Integer _
) As CreatePartRequestDetailResult
```

```csharp
public CreatePartRequestDetailResult CreatePartRequestDetail( 
   string _partRequestHeaderIDNum_,
   int _quantity_,
   int _sitePartObjid_
)
```

#### Parameters

_partRequestHeaderIDNum_

Parent Part Request Header Identifier

_quantity_

The number of parts requested

_sitePartObjid_

The Objid of the Site Part to which this Part Request will be linked.

#### Return Value

The following values are populated in the CreatePartRequestDetailResult object returned by the API method:

*   [DetailNumber](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailResult~DetailNumber.md) \- Detail Number.

Remarks

This API requires a part request header in addition to a part or site_part. If the site_part record is already known, it can be specified using _sitePartObjid_ parameter or the [SitePartObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~SitePartObjid.md) property on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object. Otherwise, the part_num, mod_level, and domain define the part (which can be specified either via parameters to one of this API's overloads, or via the respective properties on the [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object). If a serialized site_part was specified, the serial number should be specified instead of quantity. Otherwise, the quantity must be specified.

**NOTE**: If using the overload of this API that takes a [CreatePartRequestDetailSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup.md) object, the [ContractItemObjid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.CreatePartRequestDetailSetup~ContractItemObjid.md) property should not be set (left as default) unless you need this functionality AND have installed the First Choice ClearCallCenter for ClearLogistics product and required schema changes. If you do not have this product and wish to use this functionality, please contact First Choice Software.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.md)
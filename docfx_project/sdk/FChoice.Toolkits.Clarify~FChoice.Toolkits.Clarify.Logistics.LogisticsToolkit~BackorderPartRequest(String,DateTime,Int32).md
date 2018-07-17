     BackorderPartRequest(String,DateTime,Int32) Method                                                   

fcSDK Documentation

BackorderPartRequest(String,DateTime,Int32) Method

Part Request Detail Identifier

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

The number of parts being backordered for this Part Request

Allows for the backordering of inventory parts for a part request. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function BackorderPartRequest( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _expectedDate_ As [Date](#), _
   ByVal _quantity_ As [Integer](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) BackorderPartRequest( 
   string _partRequestDetailIDNum_,
   [DateTime](#) _expectedDate_,
   [int](#) _quantity_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_expectedDate_

The DateTime the Part Request backordered parts are expected to arrive. If not set, the current time is used.

_quantity_

The number of parts being backordered for this Part Request

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

As in base Clarify, if a partial backorder is performed, the part request is broken up into two new part requests. The first is for the backorder (and the quantities are changed). The new part request will be created to hold the rest of the units that did not get backordered.

This API will validate that the part request can be transitioned (for the specified user) to the proper new condition.

This API will work with either quantity or serialized parts, based on the part number/site_part of the part request. If a serial number is specified, it will be used. Otherwise, the serial number will be taken from the part request.

To use primary bin suggestions/recommendations, please see the remarks on the [ToLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~ToLocation.md) and/or [FromLocation](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~FromLocation.md) properties on the [BackorderPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md) object.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup~UseTransitions.md) property of the [BackorderPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.BackorderPartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [BackorderPartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

**NOTE**: This API requires two other APIs ([PartTransfer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md) and [CreatePartRequestDetail](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~CreatePartRequestDetail.md)) to work correctly.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~BackorderPartRequest.md)
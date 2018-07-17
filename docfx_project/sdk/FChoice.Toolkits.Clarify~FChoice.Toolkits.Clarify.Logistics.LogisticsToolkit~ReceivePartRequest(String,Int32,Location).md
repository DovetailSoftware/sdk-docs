### ReceivePartRequest(String,Int32,Location) Method

Part Request Detail Identifier

The number of parts being received for this Part Request

Inventory location (or expense GL) into which the stock will be received

Causes the specified part request to have units received against it.

This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ReceivePartRequest( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _quantity_ As [Integer](#), _
   ByVal _toLocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ReceivePartRequest( 
   string _partRequestDetailIDNum_,
   [int](#) _quantity_,
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _toLocation_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_quantity_

The number of parts being received for this Part Request

_toLocation_

Inventory location (or expense GL) into which the stock will be received

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

This API creates the part transaction (including standard costs), part instance records, receive parts records, activity logs and, optionally, generates a time bomb (for business rule notification). This API ensures that the transition from the current condition to the Received condition (for the specified user) is allowed is _useTransitions_ is true (the default), that an inventory location's bin does not have a negative level of any part (except for expense GLs), and part authorization levels for auto-replenishment (and will automatically work with that engine).

This API supports a partial receive similar to the functionality in Clarify (as of Clarify 7.0). If only part of the Part Request is received, this API will create a new part request to handle the rest (unreceived) units of the part request.

To use a primary bin suggestion/recommendation that has been previously configured, use the [special constructor](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location~_ctor(String,Boolean).md) for the [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) object and set the _isPrimaryBinSuggestion_ parameter to true.

To allow for multiple calls to this API to be performed without extra complex transitions being added to the system, set the [UseTransitions](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup~UseTransitions.md) property of the [ReceivePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ReceivePartRequestSetup.md) object, or the _useTransitions_ parameter of the respective overloads to false. Note that the last call to [ReceivePartRequest](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md) in the chain of calls should have this value set to true to ensure the transitions are checked and the condition/status is updated properly.

**NOTE**: This API must be called in conjunction with the [PartTransfer](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~PartTransfer.md) API to work correctly.  

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ReceivePartRequest.md)
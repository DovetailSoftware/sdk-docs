### SetPartStockingLevel(Location,String,String,String,String,Int16,Int16,Int16,Int16) Method

The names of the restocking location/bin

The queue to which the reorder part request will be dispatched

Part number for the Part

Part revision of the Part

Part domain of the Part

Minimum quantity of parts allowed in this inventory location

Maximum quantity of parts allowed in this inventory location

The quantity of parts that will trigger a reorder Part Request to be created for this inventory location

Quantity of parts to be reordered for this inventory location when reorder level is reached

Creates a part restocking authorization level. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function SetPartStockingLevel( _
   ByVal _location_ As Location, _
   ByVal _queue_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String, _
   ByVal _partMinimum_ As Short, _
   ByVal _partMaximum_ As Short, _
   ByVal _partReorderLevel_ As Short, _
   ByVal _partReorderQuantity_ As Short _
) As ToolkitResult
```

```csharp
public ToolkitResult SetPartStockingLevel( 
   Location _location_,
   string _queue_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_,
   short _partMinimum_,
   short _partMaximum_,
   short _partReorderLevel_,
   short _partReorderQuantity_
)
```

#### Parameters

_location_

The names of the restocking location/bin

_queue_

The queue to which the reorder part request will be dispatched

_partNumber_

Part number for the Part

_partRevision_

Part revision of the Part

_partDomain_

Part domain of the Part

_partMinimum_

Minimum quantity of parts allowed in this inventory location

_partMaximum_

Maximum quantity of parts allowed in this inventory location

_partReorderLevel_

The quantity of parts that will trigger a reorder Part Request to be created for this inventory location

_partReorderQuantity_

Quantity of parts to be reordered for this inventory location when reorder level is reached

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Part Authorization record.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~SetPartStockingLevel.md)
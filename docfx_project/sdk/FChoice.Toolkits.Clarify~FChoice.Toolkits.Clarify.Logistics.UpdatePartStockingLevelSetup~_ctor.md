### UpdatePartStockingLevelSetup Constructor

The location and bin used for restocking

The queue to which the reorder part request will be dispatched

Part number for the Part

Part revision for the Part

Part domain for the Part

Initializes a new instance of the UpdatePartStockingLevelSetup class.

Syntax

```vbnet
' Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _currentLocation_ As [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md), _
   ByVal _queue_ As String, _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String _
)

[ConstructorIndexAttribute()]
public UpdatePartStockingLevelSetup( 
   [Location](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Location.md) _currentLocation_,
   string _queue_,
   string _partNumber_,
   string _partRevision_,
   string _partDomain_
)

#### Parameters

_currentLocation_

The location and bin used for restocking

_queue_

The queue to which the reorder part request will be dispatched

_partNumber_

Part number for the Part

_partRevision_

Part revision for the Part

_partDomain_

Part domain for the Part

[!include[Requirements](../partials/requirements.md)]



#### Reference

[UpdatePartStockingLevelSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup.md)  
[UpdatePartStockingLevelSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.UpdatePartStockingLevelSetup_members.md)
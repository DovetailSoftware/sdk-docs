     ForwardPartRequest(String,String) Method                                                   

fcSDK Documentation

ForwardPartRequest(String,String) Method

Part Request Detail Identifier

The new queue into which the PartRequest is to be forwarded.

Reject-forward the PartRequest from one queue to another. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ForwardPartRequest( _
   ByVal _partRequestDetailIDNum_ As String, _
   ByVal _newQueue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ForwardPartRequest( 
   string _partRequestDetailIDNum_,
   string _newQueue_
)

#### Parameters

_partRequestDetailIDNum_

Part Request Detail Identifier

_newQueue_

The new queue into which the PartRequest is to be forwarded.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The PartRequest must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ForwardPartRequest.md)
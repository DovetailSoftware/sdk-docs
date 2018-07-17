     DispatchQuote(String,String) Method                                                   

fcSDK Documentation

DispatchQuote(String,String) Method

Quote Identifier.

The queue into which the Quote is to be dispatched.

Dispatch the Quote to the specified queue. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchQuote( _
   ByVal _quoteIDNum_ As String, _
   ByVal _queue_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchQuote( 
   string _quoteIDNum_,
   string _queue_
)

#### Parameters

_quoteIDNum_

Quote Identifier.

_queue_

The queue into which the Quote is to be dispatched.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The Quote must be in open condition, and not currently dispatched to a queue.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~DispatchQuote.md)
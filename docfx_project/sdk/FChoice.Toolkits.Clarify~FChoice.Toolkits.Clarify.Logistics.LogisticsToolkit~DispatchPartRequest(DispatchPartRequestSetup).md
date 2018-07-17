     DispatchPartRequest(DispatchPartRequestSetup) Method                                                   

fcSDK Documentation

DispatchPartRequest(DispatchPartRequestSetup) Method

Setup object for API invocation.

Dispatch the PartRequest to the specified queue. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DispatchPartRequest( _
   ByVal _setupParam_ As [DispatchPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DispatchPartRequestSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DispatchPartRequest( 
   [DispatchPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DispatchPartRequestSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

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
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~DispatchPartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.DispatchPartRequestSetup", Caption="DispatchPartRequestSetup Class"**
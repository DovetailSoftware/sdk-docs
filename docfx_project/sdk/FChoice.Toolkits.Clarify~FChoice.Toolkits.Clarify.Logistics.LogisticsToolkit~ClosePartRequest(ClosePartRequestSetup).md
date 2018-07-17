     ClosePartRequest(ClosePartRequestSetup) Method                                                   

fcSDK Documentation

ClosePartRequest(ClosePartRequestSetup) Method

Setup object for API invocation.

Causes the specified part request to be closed. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ClosePartRequest( _
   ByVal _setupParam_ As [ClosePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ClosePartRequest( 
   [ClosePartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

This API will validate that the user has the authority to close the part request. If this is the last part request detail that was open for the part request header, the header is also closed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~ClosePartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.ClosePartRequestSetup", Caption="ClosePartRequestSetup Class"**
     YankPartRequest(YankPartRequestSetup) Method                                                   

fcSDK Documentation

YankPartRequest(YankPartRequestSetup) Method

Setup object for API invocation.

Yank the PartRequest from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function YankPartRequest( _
   ByVal _setupParam_ As [YankPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.YankPartRequestSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankPartRequest( 
   [YankPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.YankPartRequestSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the PartRequest in may also be specified. This is augmented function from base Clarify, where the PartRequest is always placed in the default WipBin.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~YankPartRequest.md)  
**FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.YankPartRequestSetup", Caption="YankPartRequestSetup Class"**
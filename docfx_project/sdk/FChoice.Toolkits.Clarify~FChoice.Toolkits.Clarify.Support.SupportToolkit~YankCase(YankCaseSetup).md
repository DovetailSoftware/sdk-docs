     YankCase(YankCaseSetup) Method                                                   

fcSDK Documentation

YankCase(YankCaseSetup) Method

Setup object for API invocation.

Yank the Case from its current location to a new owner's WipBin. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function YankCase( _
   ByVal _setupParam_ As [YankCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) YankCase( 
   [YankCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The WipBin to place the Case in may also be specified. This is augmented function from base Clarify, where the Case is always placed in the default WipBin.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~YankCase.md)  
[YankCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.YankCaseSetup.md)
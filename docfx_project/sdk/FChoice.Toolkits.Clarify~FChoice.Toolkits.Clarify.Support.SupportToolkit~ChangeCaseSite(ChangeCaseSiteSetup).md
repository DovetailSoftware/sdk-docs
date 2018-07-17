     ChangeCaseSite(ChangeCaseSiteSetup) Method                                                   

fcSDK Documentation

ChangeCaseSite(ChangeCaseSiteSetup) Method

Setup object for API invocation.

Changes the Site of a Case. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeCaseSite( _
   ByVal _setupParam_ As [ChangeCaseSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeCaseSite( 
   [ChangeCaseSiteSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Any related Site Parts and Contracts for the Case are unrelated.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeCaseSite.md)  
[ChangeCaseSiteSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeCaseSiteSetup.md)
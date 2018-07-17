     CloseSubcase(CloseSubcaseSetup) Method                                                   

fcSDK Documentation

CloseSubcase(CloseSubcaseSetup) Method

Setup object for API invocation.

Closes the specified Subcase. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CloseSubcase( _
   ByVal _setupParam_ As [CloseSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseSubcaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CloseSubcase( 
   [CloseSubcaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseSubcaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The newly created CloseCase object.

Remarks

The Subcase must be in open condition.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseSubcase.md)  
[CloseSubcaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseSubcaseSetup.md)
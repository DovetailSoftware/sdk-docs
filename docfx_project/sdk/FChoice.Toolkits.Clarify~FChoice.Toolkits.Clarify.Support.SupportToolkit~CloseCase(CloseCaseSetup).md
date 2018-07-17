     CloseCase(CloseCaseSetup) Method                                                   

fcSDK Documentation

CloseCase(CloseCaseSetup) Method

Setup object for API invocation.

Closes the specified Case that is currently open. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CloseCase( _
   ByVal _setupParam_ As [CloseCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CloseCase( 
   [CloseCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The newly created CloseCase object.

Remarks

If the [CloseSums](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup~CloseSums.md) property is not set, the API will automatically calculate the log summation for the Case.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseCase.md)  
[CloseCaseSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md)
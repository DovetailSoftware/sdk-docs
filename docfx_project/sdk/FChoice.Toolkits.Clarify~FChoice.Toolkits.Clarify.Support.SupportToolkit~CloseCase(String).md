     CloseCase(String) Method                                                   

fcSDK Documentation

CloseCase(String) Method

Identifier of the Case being closed.

Closes the specified Case that is currently open. This overload takes a set of required parameters for the API.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CloseCase( _
   ByVal _caseIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CloseCase( 
   string _caseIDNum_
)

#### Parameters

_caseIDNum_

Identifier of the Case being closed.

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
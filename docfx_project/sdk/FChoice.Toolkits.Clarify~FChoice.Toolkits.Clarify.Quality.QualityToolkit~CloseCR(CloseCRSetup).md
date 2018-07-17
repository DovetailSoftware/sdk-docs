     CloseCR(CloseCRSetup) Method                                                   

fcSDK Documentation

CloseCR(CloseCRSetup) Method

Setup object for API invocation.

Close a CR. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CloseCR( _
   ByVal _setupParam_ As [CloseCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CloseCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CloseCR( 
   [CloseCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CloseCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CloseBug.

Remarks

The CR must be in a condition/status that allows the transition to the Closed condition.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CloseCR.md)  
[CloseCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CloseCRSetup.md)
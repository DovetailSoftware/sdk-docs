     FixCR(FixCRSetup) Method                                                   

fcSDK Documentation

FixCR(FixCRSetup) Method

Setup object for API invocation.

Change the condition of a CR to Fixed. This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function FixCR( _
   ByVal _setupParam_ As [FixCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.FixCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) FixCR( 
   [FixCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.FixCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the FixBug.

Remarks

The CR condition will become Fixed even if it was already Closed.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~FixCR.md)  
[FixCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.FixCRSetup.md)
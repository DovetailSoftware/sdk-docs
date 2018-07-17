     CreateCR(CreateCRSetup) Method                                                   

fcSDK Documentation

CreateCR(CreateCRSetup) Method

Setup object for API invocation.

Create a new Change Request (CR). This overload takes a setup object.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CreateCR( _
   ByVal _setupParam_ As [CreateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CreateCR( 
   [CreateCRSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md) _setupParam_
)

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the CR.

Remarks

Unless a [Queue](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup~Queue.md) is specified the CR is located in the owners default WipBin.  

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CreateCR.md)  
[CreateCRSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup.md)
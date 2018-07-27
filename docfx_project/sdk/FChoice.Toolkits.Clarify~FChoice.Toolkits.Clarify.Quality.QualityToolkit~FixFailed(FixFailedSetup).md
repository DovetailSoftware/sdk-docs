### FixFailed(FixFailedSetup) Method

Setup object for API invocation.

Change the condition of a Change Request from Fixed to Open. This overload takes a setup object.

#### Syntax

```vbnet
'Declaration

Public Overloads Function FixFailed( _
   ByVal _setupParam_ FixFailedSetup _
) As ToolkitResult
```

```csharp
public ToolkitResult FixFailed( 
   FixFailedSetup _setupParam_
)
```

#### Parameters

_setupParam_

Setup object for API invocation.

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- The Objid of the CloseBug.

#### Remarks

The CR must be in a condition/status that allows the transition to the Open.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~FixFailed.md)  
[FixFailedSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.FixFailedSetup.md)
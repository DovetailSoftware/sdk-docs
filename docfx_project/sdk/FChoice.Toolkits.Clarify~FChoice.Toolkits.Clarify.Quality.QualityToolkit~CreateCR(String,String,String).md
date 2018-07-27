### CreateCR(String,String,String) Method

Part number of part for the Change Request

Part revision of part for the Change Request

Part domain of part for the Change Request

Create a new Change Request (CR). This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function CreateCR( _
   ByVal _partNumber_ As String, _
   ByVal _partRevision_ As String, _
   ByVal _partDomain_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CreateCR( 
   string _partNumber_,
   string _partRevision_,
   string _partDomain_
)
```

#### Parameters

_partNumber_

Part number of part for the Change Request

_partRevision_

Part revision of part for the Change Request

_partDomain_

Part domain of part for the Change Request

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [IDNum](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~IDNum.md) \- The IDNum of the CR.

#### Remarks

Unless a [Queue](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CreateCRSetup~Queue.md) is specified the CR is located in the owners default WipBin.  

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CreateCR.md)
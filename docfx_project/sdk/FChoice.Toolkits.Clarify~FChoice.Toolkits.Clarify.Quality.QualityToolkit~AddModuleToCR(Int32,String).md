### AddModuleToCR(Int32,String) Method

Objid of the Fixed CR.

Name of the file related to the fix.

Adding a file Module to a Fixed CR. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AddModuleToCR( _
   ByVal _fixObjid_ As Integer, _
   ByVal _fileName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddModuleToCR( 
   int _fixObjid_,
   string _fileName_
)
```

#### Parameters

_fixObjid_

Objid of the Fixed CR.

_fileName_

Name of the file related to the fix.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

There is no integration between this API and your change control system so no validation is possible for the Module [filename](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup~FileName.md) or [revision](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.AddModuleToCRSetup~FileRevision.md).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~AddModuleToCR.md)
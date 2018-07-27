### RelateCaseToParentCase(String,String) Method

Identifier of the child Case in the relation.

Identifier of a oarent Case in the relation.

Relates a Case to a specified parent Case. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RelateCaseToParentCase( _
   ByVal _caseIDNum_ As String, _
   ByVal _parentCaseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult RelateCaseToParentCase( 
   string _caseIDNum_,
   string _parentCaseIDNum_
)
```

#### Parameters

_caseIDNum_

Identifier of the child Case in the relation.

_parentCaseIDNum_

Identifier of a oarent Case in the relation.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The parent Case cannot be a descendent of the child Case.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~RelateCaseToParentCase.md)
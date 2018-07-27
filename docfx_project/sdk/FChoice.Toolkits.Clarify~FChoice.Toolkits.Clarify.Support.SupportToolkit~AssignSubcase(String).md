### AssignSubcase(String) Method

Subcase Identifier.

Assign the Subcase to a new user. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AssignSubcase( _
   ByVal _subcaseIDNum_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignSubcase( 
   string _subcaseIDNum_
)
```

#### Parameters

_subcaseIDNum_

Subcase Identifier.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Subcase must be in the Open condition, and the user assigning the Subcase does not have to be the owner of the Subcase. In base Clarify, the assigner of a Subcase must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Subcase in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AssignSubcase.md)
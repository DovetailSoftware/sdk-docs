### AssignLead(Int32,String) Method

The objid of the lead being assigned.

The new user which the lead is assigned to.

Assign the Lead to a new user. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function AssignLead( _
   ByVal _leadObjid_ As Integer, _
   ByVal _newOwner_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AssignLead( 
   int _leadObjid_,
   string _newOwner_
)
```

#### Parameters

_leadObjid_

The objid of the lead being assigned.

_newOwner_

The new user which the lead is assigned to.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

#### Remarks

The Lead must be in the Open condition, and the user assigning the Lead does not have to be the owner of the Lead. In base Clarify, the assigner of a Lead must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the Lead in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SalesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit.md)  
[SalesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Sales.SalesToolkit~AssignLead.md)
### CheckClearQualityTransition(String,String,String,String,String) Method

The current condition of the Change Request.

The current status of the Change Request.

The new condition for the Change Request.

The new status for the Change Request.

The user checking the transition. If not set, the session user is used.

Determine if a user can change status from an old condition/status to a new condition/status. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function CheckClearQualityTransition( _
   ByVal _oldCondition_ As String, _
   ByVal _oldStatus_ As String, _
   ByVal _newCondition_ As String, _
   ByVal _newStatus_ As String, _
   ByVal _userName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult CheckClearQualityTransition( 
   string _oldCondition_,
   string _oldStatus_,
   string _newCondition_,
   string _newStatus_,
   string _userName_
)
```

#### Parameters

_oldCondition_

The current condition of the Change Request.

_oldStatus_

The current status of the Change Request.

_newCondition_

The new condition for the Change Request.

_newStatus_

The new status for the Change Request.

_userName_

The user checking the transition. If not set, the session user is used.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

Checks the transitions as set up in Clarify’s Policies & Customers.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[QualityToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit.md)  
[QualityToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.QualityToolkit~CheckClearQualityTransition.md)
### CheckClearQualityTransitionSetup Constructor

The current condition of the Change Request.

The current status of the Change Request.

The new condition for the Change Request.

The new status for the Change Request.

The user checking the transition. If not set, the session user is used.

Initializes a new instance of the CheckClearQualityTransitionSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _oldCondition_ As String, _
   ByVal _oldStatus_ As String, _
   ByVal _newCondition_ As String, _
   ByVal _newStatus_ As String, _
   ByVal _userName_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public CheckClearQualityTransitionSetup( 
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

[!include[Requirements](../partials/requirements.md)]

#### Reference

[CheckClearQualityTransitionSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CheckClearQualityTransitionSetup.md)  
[CheckClearQualityTransitionSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Quality.CheckClearQualityTransitionSetup_members.md)
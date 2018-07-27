### CreateParticipantActivityEntry Method

#### Syntax

```vbnet
'Declaration

Public Sub CreateParticipantActivityEntry( _
   ByVal _activityCode_ As Integer, _
   ByVal _userObjid_ As Integer, _
   ByVal _activityDate_ As Date, _
   ByVal _additionalInfo_ As String, _
   ByVal _objectRow_ As ClarifyDataRow, _
   ByVal _actEntryRow_ As ClarifyDataRow, _
   ByVal _clarifyGenericsToUpdate_ As IList(Of ClarifyGeneric), _
   ByVal _parentRelation_ As String _
) 
```

```csharp
public void CreateParticipantActivityEntry( 
   int _activityCode_,
   int _userObjid_,
   DateTime _activityDate_,
   string _additionalInfo_,
   ClarifyDataRow _objectRow_,
   ClarifyDataRow _actEntryRow_,
   IList<ClarifyGeneric> _clarifyGenericsToUpdate_,
   string _parentRelation_
)
```

#### Parameters

_activityCode_

_userObjid_

_activityDate_

_additionalInfo_

_objectRow_

_actEntryRow_

_clarifyGenericsToUpdate_

_parentRelation_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
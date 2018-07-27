### CreateActivityEntryRow Method

#### Syntax

```vbnet
'Declaration

Public Function CreateActivityEntryRow( _
   ByVal _activityCode_ As Integer, _
   ByVal _activityName_ As String, _
   ByVal _userObjid_ As Integer, _
   ByVal _activityDate_ As Date, _
   ByVal _addnl_info_ As String, _
   ByVal _objectRow_ As ClarifyDataRow, _
   ByVal _clarifyGenericsToUpdate_ As IList(Of ClarifyGeneric) _
) As ClarifyDataRow
```

```csharp
public ClarifyDataRow CreateActivityEntryRow( 
   int _activityCode_,
   string _activityName_,
   int _userObjid_,
   DateTime _activityDate_,
   string _addnl_info_,
   ClarifyDataRow _objectRow_,
   IList<ClarifyGeneric> _clarifyGenericsToUpdate_
)
```

#### Parameters

_activityCode_

_activityName_

_userObjid_

_activityDate_

_addnl_info_

_objectRow_

_clarifyGenericsToUpdate_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
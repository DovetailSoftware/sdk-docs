### CreateActivityLogEntry(Int32,Int32,DateTime,String,ClarifyDataRow,ClarifyDataRow,WorkflowObjectInfo) Method

#### Syntax

```vbnet
'Declaration

Public Sub CreateActivityLogEntry( _
   ByVal _activityCode_ As Integer, _
   ByVal _userObjid_ As Integer, _
   ByVal _activityDate_ As Date, _
   ByVal _addlInfo_ As String, _
   ByVal _objectRow_ As ClarifyDataRow, _
   ByVal _actEntryRow_ As ClarifyDataRow, _
   Optional ByVal _objInfo_ As WorkflowObjectInfo _
) 
```

```csharp
public void CreateActivityLogEntry( 
   int _activityCode_,
   int _userObjid_,
   DateTime _activityDate_,
   string _addlInfo_,
   ClarifyDataRow _objectRow_,
   ClarifyDataRow _actEntryRow_,
   WorkflowObjectInfo _objInfo_
)
```

#### Parameters

_activityCode_

_userObjid_

_activityDate_

_addlInfo_

_objectRow_

_actEntryRow_

_objInfo_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
     CreateActivityLogEntry(Int32,Int32,DateTime,String,ClarifyDataRow,ClarifyDataRow,WorkflowObjectInfo) Method                                                   

fcSDK Documentation

CreateActivityLogEntry(Int32,Int32,DateTime,String,ClarifyDataRow,ClarifyDataRow,WorkflowObjectInfo) Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub CreateActivityLogEntry( _
   ByVal _activityCode_ As [Integer](#), _
   ByVal _userObjid_ As [Integer](#), _
   ByVal _activityDate_ As [Date](#), _
   ByVal _addlInfo_ As String, _
   ByVal _objectRow_ As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md), _
   ByVal _actEntryRow_ As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md), _
   Optional ByVal _objInfo_ As [WorkflowObjectInfo](fcSDK~FChoice.Foundation.Clarify.WorkflowObjectInfo.md) _
) 

public void CreateActivityLogEntry( 
   [int](#) _activityCode_,
   [int](#) _userObjid_,
   [DateTime](#) _activityDate_,
   string _addlInfo_,
   [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) _objectRow_,
   [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) _actEntryRow_,
   [WorkflowObjectInfo](fcSDK~FChoice.Foundation.Clarify.WorkflowObjectInfo.md) _objInfo_
)

#### Parameters

_activityCode_

_userObjid_

_activityDate_

_addlInfo_

_objectRow_

_actEntryRow_

_objInfo_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
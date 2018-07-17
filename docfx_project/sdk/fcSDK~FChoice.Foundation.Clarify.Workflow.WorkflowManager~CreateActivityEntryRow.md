     CreateActivityEntryRow Method                                                   

fcSDK Documentation

CreateActivityEntryRow Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Function CreateActivityEntryRow( _
   ByVal _activityCode_ As [Integer](#), _
   ByVal _activityName_ As String, _
   ByVal _userObjid_ As [Integer](#), _
   ByVal _activityDate_ As [Date](#), _
   ByVal _addnl_info_ As String, _
   ByVal _objectRow_ As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md), _
   ByVal _clarifyGenericsToUpdate_ As [IList(Of ClarifyGeneric)](#) _
) As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md)

public [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) CreateActivityEntryRow( 
   [int](#) _activityCode_,
   string _activityName_,
   [int](#) _userObjid_,
   [DateTime](#) _activityDate_,
   string _addnl_info_,
   [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) _objectRow_,
   [IList<ClarifyGeneric>](#) _clarifyGenericsToUpdate_
)

#### Parameters

_activityCode_

_activityName_

_userObjid_

_activityDate_

_addnl_info_

_objectRow_

_clarifyGenericsToUpdate_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
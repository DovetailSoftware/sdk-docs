     ChangeStatus Method                                                   

fcSDK Documentation

ChangeStatus Method

Syntax

```vbnet
```csharp

'Declaration
 

Public Function ChangeStatus( _
   ByVal _idNum_ As String, _
   ByVal _objectName_ As String, _
   ByVal _newStatus_ As String, _
   ByVal _changeDate_ As [Date](#), _
   ByVal _userName_ As String, _
   ByVal _generateTimeBomb_ As Boolean, _
   ByVal _notes_ As String _
) As [WorkFlowInfo](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkFlowInfo.md)

public [WorkFlowInfo](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkFlowInfo.md) ChangeStatus( 
   string _idNum_,
   string _objectName_,
   string _newStatus_,
   [DateTime](#) _changeDate_,
   string _userName_,
   bool _generateTimeBomb_,
   string _notes_
)

#### Parameters

_idNum_

_objectName_

_newStatus_

_changeDate_

_userName_

_generateTimeBomb_

_notes_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
### Forward Method

Syntax

```vbnet
'Declaration

Public Function Forward( _
   ByVal _idNum_ As String, _
   ByVal _objectName_ As String, _
   ByVal _newQueueName_ As String, _
   ByVal _forwardDate_ As Date, _
   ByVal _userName_ As String, _
   ByVal _generateTimeBomb_ As Boolean, _
   ByVal _notes_ As String _
) As WorkFlowInfo
```

```csharp
public WorkFlowInfo Forward( 
   string _idNum_,
   string _objectName_,
   string _newQueueName_,
   DateTime _forwardDate_,
   string _userName_,
   bool _generateTimeBomb_,
   string _notes_
)
```

#### Parameters

_idNum_

_objectName_

_newQueueName_

_forwardDate_

_userName_

_generateTimeBomb_

_notes_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[WorkflowManager Class](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager.md)  
[WorkflowManager Members](fcSDK~FChoice.Foundation.Clarify.Workflow.WorkflowManager_members.md)
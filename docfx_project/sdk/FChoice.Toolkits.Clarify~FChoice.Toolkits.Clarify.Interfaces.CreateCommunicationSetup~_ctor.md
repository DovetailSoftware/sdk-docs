### CreateCommunicationSetup Constructor

The ID of the parent dialogue.

The title or subject line of the communication.

The address of the sender of the communication.

The address of each receipient of the communication.

Initializes a new instance of the CreateCommunicationSetup class.

Syntax

```vbnet
' Declaration

Public Function New( _
   ByVal _dialogueIdNumber_ As String, _
   ByVal _title_ As String, _
   ByVal _channelObjid_ As Integer, _
   ByVal _sender_ As String, _
   ByVal _recipients_() As String _
)

public CreateCommunicationSetup( 
   string _dialogueIdNumber_,
   string _title_,
   int _channelObjid_,
   string _sender_,
   string[] _recipients_
)

#### Parameters

_dialogueIdNumber_

The ID of the parent dialogue.

_title_

The title or subject line of the communication.

_channelObjid_

_sender_

The address of the sender of the communication.

_recipients_

The address of each receipient of the communication.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[CreateCommunicationSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCommunicationSetup.md)  
[CreateCommunicationSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.CreateCommunicationSetup_members.md)
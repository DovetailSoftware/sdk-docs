### forward_object Method (FCSession)

#### Syntax

```vbnet
'Declaration

Public Function forward_object( _
   ByVal _objId_ As String, _
   ByVal _newQueue_ As String, _
   ByRef _forwardDate_ As String, _
   ByVal _notes_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
public short forward_object( 
   string _objId_,
   string _newQueue_,
   out string _forwardDate_,
   string _notes_,
   out string _localUserName_,
   bool _generateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_newQueue_

_forwardDate_

_notes_

_localUserName_

_generateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession.md)  
[FCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession_members.md)
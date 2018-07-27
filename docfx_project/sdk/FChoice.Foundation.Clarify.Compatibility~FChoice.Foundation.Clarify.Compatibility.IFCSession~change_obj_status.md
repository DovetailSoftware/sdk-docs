### change_obj_status Method (IFCSession)

#### Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743892)>
Function change_obj_status( _
   ByVal _objId_ As String, _
   ByRef _newStatus_ As String, _
   ByRef _changeDate_ As String, _
   ByVal _notes_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
[DispIdAttribute(1610743892)]
short change_obj_status( 
   string _objId_,
   out string _newStatus_,
   out string _changeDate_,
   string _notes_,
   out string _localUserName_,
   bool _generateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_newStatus_

_changeDate_

_notes_

_localUserName_

_generateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
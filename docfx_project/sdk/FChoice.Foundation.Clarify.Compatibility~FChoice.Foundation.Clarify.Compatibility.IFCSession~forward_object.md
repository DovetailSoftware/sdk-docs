### forward_object Method (IFCSession)

#### Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743900)>
Function forward_object( _
   ByVal _objId_ As String, _
   ByVal _newQueue_ As String, _
   ByRef _forwardDate_ As String, _
   ByVal _notes_ As String, _
   ByRef _localuserName_ As String, _
   ByVal _genearateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
[DispIdAttribute(1610743900)]
short forward_object( 
   string _objId_,
   string _newQueue_,
   out string _forwardDate_,
   string _notes_,
   out string _localuserName_,
   bool _genearateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_newQueue_

_forwardDate_

_notes_

_localuserName_

_genearateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
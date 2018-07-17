     forward_object Method (IFCSession)                                                   

fcSDK Documentation

forward_object Method (IFCSession)

Syntax

```vbnet
```csharp

'Declaration
 

<[DispIdAttribute](#)(1610743900)>
Function forward_object( _
   ByVal _objId_ As String, _
   ByVal _newQueue_ As String, _
   ByRef _forwardDate_ As String, _
   ByVal _notes_ As String, _
   ByRef _localuserName_ As String, _
   ByVal _genearateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short

\[[DispIdAttribute](#)(1610743900)\]
short forward_object( 
   string _objId_,
   string _newQueue_,
   out string _forwardDate_,
   string _notes_,
   out string _localuserName_,
   bool _genearateTimeBombs_,
   string _objectType_
)

#### Parameters

_objId_

_newQueue_

_forwardDate_

_notes_

_localuserName_

_genearateTimeBombs_

_objectType_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
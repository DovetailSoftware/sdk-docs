     accept_object Method (FCSession)                                                   

fcSDK Documentation

accept_object Method (FCSession)

Syntax

```vbnet
```csharp

'Declaration
 

Public Function accept_object( _
   ByVal _objId_ As String, _
   ByRef _acceptDate_ As String, _
   ByRef _wipBin_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short

public short accept_object( 
   string _objId_,
   out string _acceptDate_,
   out string _wipBin_,
   out string _localUserName_,
   bool _generateTimeBombs_,
   string _objectType_
)

#### Parameters

_objId_

_acceptDate_

_wipBin_

_localUserName_

_generateTimeBombs_

_objectType_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession.md)  
[FCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession_members.md)
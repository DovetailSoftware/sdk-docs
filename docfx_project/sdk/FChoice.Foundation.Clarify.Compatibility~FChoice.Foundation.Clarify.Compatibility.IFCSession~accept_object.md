     accept_object Method (IFCSession)                                                   

fcSDK Documentation

accept_object Method (IFCSession)

Syntax

```vbnet
```csharp

'Declaration
 

<[DispIdAttribute](#)(1610743895)>
Function accept_object( _
   ByVal _objId_ As String, _
   ByRef _acceptDate_ As String, _
   ByRef _wipBin_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimebombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short

\[[DispIdAttribute](#)(1610743895)\]
short accept_object( 
   string _objId_,
   out string _acceptDate_,
   out string _wipBin_,
   out string _localUserName_,
   bool _generateTimebombs_,
   string _objectType_
)

#### Parameters

_objId_

_acceptDate_

_wipBin_

_localUserName_

_generateTimebombs_

_objectType_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
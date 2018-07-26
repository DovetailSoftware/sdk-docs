### assign_object Method (IFCSession)

Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743897)>
Function assign_object( _
   ByVal _objId_ As String, _
   ByRef _newUser_ As String, _
   ByVal _wipBin_ As String, _
   ByRef _assignDate_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
[DispIdAttribute(1610743897)]
short assign_object( 
   string _objId_,
   out string _newUser_,
   string _wipBin_,
   out string _assignDate_,
   out string _localUserName_,
   bool _generateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_newUser_

_wipBin_

_assignDate_

_localUserName_

_generateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
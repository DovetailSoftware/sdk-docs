### yank_object Method (IFCSession)

#### Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743903)>
Function yank_object( _
   ByVal _objId_ As String, _
   ByVal _wipBin_ As String, _
   ByRef _yankDate_ As String, _
   ByRef _localuserName_ As String, _
   ByVal _genearateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
[DispIdAttribute(1610743903)]
short yank_object( 
   string _objId_,
   string _wipBin_,
   out string _yankDate_,
   out string _localuserName_,
   bool _genearateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_wipBin_

_yankDate_

_localuserName_

_genearateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
### reject_object Method (IFCSession)

Syntax

```vbnet
' Declaration

<DispIdAttribute(1610743902)>
Function reject_object( _
   ByVal _objId_ As String, _
   ByRef _rejectDate_ As String, _
   ByVal _wipBin_ As String, _
   ByVal _notes_ As String, _
   ByRef _localuserName_ As String, _
   ByVal _genearateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short

[DispIdAttribute(1610743902)]
short reject_object( 
   string _objId_,
   out string _rejectDate_,
   string _wipBin_,
   string _notes_,
   out string _localuserName_,
   bool _genearateTimeBombs_,
   string _objectType_
)

#### Parameters

_objId_

_rejectDate_

_wipBin_

_notes_

_localuserName_

_genearateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]



#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
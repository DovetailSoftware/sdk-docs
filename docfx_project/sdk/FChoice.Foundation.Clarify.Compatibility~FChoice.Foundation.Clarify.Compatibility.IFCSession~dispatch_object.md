### dispatch_object Method (IFCSession)

Syntax

```vbnet
'Declaration

<DispIdAttribute(1610743899)>
Function dispatch_object( _
   ByVal _objId_ As String, _
   ByVal _queueName_ As String, _
   ByRef _dispatchDate_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
[DispIdAttribute(1610743899)]
short dispatch_object( 
   string _objId_,
   string _queueName_,
   out string _dispatchDate_,
   out string _localUserName_,
   bool _generateTimeBombs_,
   string _objectType_
)
```

#### Parameters

_objId_

_queueName_

_dispatchDate_

_localUserName_

_generateTimeBombs_

_objectType_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[IFCSession Interface](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession.md)  
[IFCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.IFCSession_members.md)
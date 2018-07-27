### dispatch_object Method (FCSession)

#### Syntax

```vbnet
'Declaration

Public Function dispatch_object( _
   ByVal _objId_ As String, _
   ByVal _queueName_ As String, _
   ByRef _dispatchDate_ As String, _
   ByRef _localUserName_ As String, _
   ByVal _generateTimeBombs_ As Boolean, _
   ByVal _objectType_ As String _
) As Short
```

```csharp
public short dispatch_object( 
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

[FCSession Class](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession.md)  
[FCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession_members.md)
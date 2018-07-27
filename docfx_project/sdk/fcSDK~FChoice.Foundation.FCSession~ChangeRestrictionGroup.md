### ChangeRestrictionGroup Method (FCSession)

Name of the [RestrictionGroup](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroup.md)the session should start using.

Make the new [RestrictionGroup](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroup.md) permanent.

Changes the [RestrictionGroup](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroup.md) the session is currently using. The change can be made permanent.

#### Syntax

```vbnet
'Declaration

Public Overridable Sub ChangeRestrictionGroup( _
   ByVal _newGroupName_ As String, _
   ByVal _saveChange_ As Boolean _
) 
```

```csharp
public virtual void ChangeRestrictionGroup( 
   string _newGroupName_,
   bool _saveChange_
)
```

#### Parameters

_newGroupName_

Name of the [RestrictionGroup](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroup.md)the session should start using.

_saveChange_

Make the new [RestrictionGroup](fcSDK~FChoice.Foundation.DataObjects.RestrictionGroup.md) permanent.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)
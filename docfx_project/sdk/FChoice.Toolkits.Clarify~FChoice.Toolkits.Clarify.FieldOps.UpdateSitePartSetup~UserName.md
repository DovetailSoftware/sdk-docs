﻿### UserName Property (UpdateSitePartSetup)

The user who is updating the Site Part. If not set, the session user is used.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property UserName As String
```

```csharp
[PropertyBitValueAttribute()]
public string UserName {get; set;}
```

#### Remarks

When this property is not specified. This API method will attempt to use the toolkit session's **UserName**. If the toolkit session was **created** as a **Contact** session this property is required otherwise errors will result.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[UpdateSitePartSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateSitePartSetup.md)  
[UpdateSitePartSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.UpdateSitePartSetup_members.md)
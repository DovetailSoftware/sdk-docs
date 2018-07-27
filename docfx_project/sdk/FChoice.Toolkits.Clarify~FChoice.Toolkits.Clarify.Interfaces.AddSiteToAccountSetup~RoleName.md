### RoleName Property (AddSiteToAccountSetup)

Name of the Site Role the Site will play for the Account.

#### Syntax

```vbnet
'Declaration

<PropertyBitValueAttribute()>
Public Property RoleName As String
```

```csharp
[PropertyBitValueAttribute()]
public string RoleName {get; set;}
```

#### Remarks

The rolename must be an Element from the 'Account Site Roles' user defined list or the value **OWNER** .

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddSiteToAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup.md)  
[AddSiteToAccountSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup_members.md)
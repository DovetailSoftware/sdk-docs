### AddSiteToAccountSetup Constructor

Site Identifier of site to be added.

The identifier of the Account to which the site will be added.

Name of the Site Role the Site will play for the Account.

Initializes a new instance of the AddSiteToAccountSetup class.

Syntax

```vbnet
'Declaration

<ConstructorIndexAttribute()>
Public Function New( _
   ByVal _siteIDNum_ As String, _
   ByVal _accountIDNum_ As String, _
   ByVal _roleName_ As String _
)
```

```csharp
[ConstructorIndexAttribute()]
public AddSiteToAccountSetup( 
   string _siteIDNum_,
   string _accountIDNum_,
   string _roleName_
)
```

#### Parameters

_siteIDNum_

Site Identifier of site to be added.

_accountIDNum_

The identifier of the Account to which the site will be added.

_roleName_

Name of the Site Role the Site will play for the Account.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[AddSiteToAccountSetup Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup.md)  
[AddSiteToAccountSetup Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.AddSiteToAccountSetup_members.md)
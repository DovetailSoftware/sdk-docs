### AddSiteToAccount(String,String,String) Method

Site Identifier of site to be added.

The identifier of the Account to which the site will be added.

Name of the Site Role the Site will play for the Account.

Adds a Site to an existing Account specifying the Site's role in the account. This overload takes a set of required parameters for the API.

Syntax

```vbnet
'Declaration

Public Overloads Function AddSiteToAccount( _
   ByVal _siteIDNum_ As String, _
   ByVal _accountIDNum_ As String, _
   ByVal _roleName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult AddSiteToAccount( 
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

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Site Role that is created to link the Site to the Account.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~AddSiteToAccount.md)
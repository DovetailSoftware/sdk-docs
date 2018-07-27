### RemoveSiteFromAccount(String,String,String) Method

Identifier of the Site being removed from the Account

Identifier for the Account the Site will be removed from.

Name of the Site's role being removed from the Account

Remove a Site from an Account. This overload takes a set of required parameters for the API.

#### Syntax

```vbnet
'Declaration

Public Overloads Function RemoveSiteFromAccount( _
   ByVal _siteIDNum_ As String, _
   ByVal _accountIDNum_ As String, _
   ByVal _roleName_ As String _
) As ToolkitResult
```

```csharp
public ToolkitResult RemoveSiteFromAccount( 
   string _siteIDNum_,
   string _accountIDNum_,
   string _roleName_
)
```

#### Parameters

_siteIDNum_

Identifier of the Site being removed from the Account

_accountIDNum_

Identifier for the Account the Site will be removed from.

_roleName_

Name of the Site's role being removed from the Account

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[InterfacesToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit.md)  
[InterfacesToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Interfaces.InterfacesToolkit~RemoveSiteFromAccount.md)
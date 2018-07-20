### AddGLAccount(String,String) Method

Name of the General Ledger account

The identifier of the Site with which the account is to be associated

Used to add expense and capital GL accounts to Clarify. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function AddGLAccount( _
   ByVal _accountName_ As String, _
   ByVal _siteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AddGLAccount( 
   string _accountName_,
   string _siteIDNum_
)

#### Parameters

_accountName_

Name of the General Ledger account

_siteIDNum_

The identifier of the Site with which the account is to be associated

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Location record.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AddGLAccount.md)
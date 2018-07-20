### UpdateGLAccount(String,String) Method

Current name of the account

Identifier of the Site with which the account is associated

Used to modify existing GL accounts. This overload takes a set of required parameters for the API.

Syntax

```vbnet
' Declaration

Public Overloads Function UpdateGLAccount( _
   ByVal _currentName_ As String, _
   ByVal _siteIDNum_ As String _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) UpdateGLAccount( 
   string _currentName_,
   string _siteIDNum_
)

#### Parameters

_currentName_

Current name of the account

_siteIDNum_

Identifier of the Site with which the account is associated

#### Return Value

The following values are populated in the [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) object returned by the API method:

*   [Objid](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult~Objid.md) \- Objid of the Inventory Location record.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~UpdateGLAccount.md)
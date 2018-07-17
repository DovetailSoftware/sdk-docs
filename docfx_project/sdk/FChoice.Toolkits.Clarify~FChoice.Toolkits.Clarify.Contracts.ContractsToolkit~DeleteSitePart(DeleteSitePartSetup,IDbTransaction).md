     DeleteSitePart(DeleteSitePartSetup,IDbTransaction) Method                                                   

fcSDK Documentation

DeleteSitePart(DeleteSitePartSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to delete a site_part in Clarify, and then unrelate the site_part from all other related records. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function DeleteSitePart( _
   ByVal _setupParam_ As [DeleteSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DeleteSitePartSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) DeleteSitePart( 
   [DeleteSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.DeleteSitePartSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ContractsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit.md)  
[ContractsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Contracts.ContractsToolkit~DeleteSitePart.md)
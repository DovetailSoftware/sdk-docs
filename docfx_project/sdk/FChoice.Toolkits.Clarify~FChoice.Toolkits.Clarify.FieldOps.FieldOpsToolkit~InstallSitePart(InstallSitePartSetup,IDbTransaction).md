     InstallSitePart(InstallSitePartSetup,IDbTransaction) Method                                                   

fcSDK Documentation

InstallSitePart(InstallSitePartSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Used to install a site part. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function InstallSitePart( _
   ByVal _setupParam_ As [InstallSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.InstallSitePartSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) InstallSitePart( 
   [InstallSitePartSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.InstallSitePartSetup.md) _setupParam_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setupParam_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Return Value

A [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) instance with no properties set. The properties (Objid, IDNum, etc.) are not relevant to this API.

Remarks

The part can be installed at the top level of the site, under another site part or in a bin. If the part revision to be installed has a bill of materials (BOM), that BOM will also be installed at the site under the new site part. If the sub-parts are serial tracked, the API will generate the proper new serial numbers for the sub-parts. If the part to be installed is serialized, and the quantity is > 1, the API will generate individual parts (sub-parts only).

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FieldOpsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit.md)  
[FieldOpsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.FieldOps.FieldOpsToolkit~InstallSitePart.md)
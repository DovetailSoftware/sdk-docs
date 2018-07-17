     AssignPartRequest(AssignPartRequestSetup,IDbTransaction) Method                                                   

fcSDK Documentation

AssignPartRequest(AssignPartRequestSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Assign the PartRequest to a new user. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function AssignPartRequest( _
   ByVal _setupParam_ As [AssignPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AssignPartRequestSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) AssignPartRequest( 
   [AssignPartRequestSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.AssignPartRequestSetup.md) _setupParam_,
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

The PartRequest must be in the Open condition, and the user assigning the PartRequest does not have to be the owner of the PartRequest. In base Clarify, the assigner of a PartRequest must be the owner. If either user name is not specified, the “current” user is used. The date/time of the assignment, and the WipBin to place the PartRequest in can also be specified. Allowing a WipBin other than the default one is also an augmentation from base Clarify.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[LogisticsToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit.md)  
[LogisticsToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Logistics.LogisticsToolkit~AssignPartRequest.md)
     ChangeSubcaseStatus(ChangeSubcaseStatusSetup,IDbTransaction) Method                                                   

fcSDK Documentation

ChangeSubcaseStatus(ChangeSubcaseStatusSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Changes the status of a Subcase. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function ChangeSubcaseStatus( _
   ByVal _setupParam_ As [ChangeSubcaseStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeSubcaseStatusSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) ChangeSubcaseStatus( 
   [ChangeSubcaseStatusSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.ChangeSubcaseStatusSetup.md) _setupParam_,
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

The Subcase may be opened or closed, but the status selected must be valid for the current condition. In other words, you cannot assign a Closed condition status to a Subcase that is currently Open.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~ChangeSubcaseStatus.md)
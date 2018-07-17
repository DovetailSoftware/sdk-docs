     CloseCase(CloseCaseSetup,IDbTransaction) Method                                                   

fcSDK Documentation

CloseCase(CloseCaseSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Closes the specified Case that is currently open. This overload takes a setup object and a database transaction.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function CloseCase( _
   ByVal _setupParam_ As [CloseCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) CloseCase( 
   [CloseCaseSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup.md) _setupParam_,
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

If the [CloseSums](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.CloseCaseSetup~CloseSums.md) property is not set, the API will automatically calculate the log summation for the Case.

Example

**Developer Walkthrough - Transaction support**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~CloseCase.md)
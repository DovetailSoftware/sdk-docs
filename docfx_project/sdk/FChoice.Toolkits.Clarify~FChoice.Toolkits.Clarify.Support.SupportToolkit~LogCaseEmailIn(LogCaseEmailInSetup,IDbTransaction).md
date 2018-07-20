### LogCaseEmailIn(LogCaseEmailInSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email in log against a Case.

Syntax

```vbnet
' Declaration

Public Overloads Function LogCaseEmailIn( _
   ByVal _setup_ As [LogCaseEmailInSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailInSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogCaseEmailIn( 
   [LogCaseEmailInSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogCaseEmailInSetup.md) _setup_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setup_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogCaseEmailIn.md)
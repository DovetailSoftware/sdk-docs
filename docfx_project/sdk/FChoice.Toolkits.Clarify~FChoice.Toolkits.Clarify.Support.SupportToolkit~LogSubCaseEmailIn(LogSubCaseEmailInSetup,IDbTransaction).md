     LogSubCaseEmailIn(LogSubCaseEmailInSetup,IDbTransaction) Method                                                   

fcSDK Documentation

LogSubCaseEmailIn(LogSubCaseEmailInSetup,IDbTransaction) Method

Setup object for API invocation.

Database transaction under which the API will be invoked.

Creates an email in log against a Subcase.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Function LogSubCaseEmailIn( _
   ByVal _setup_ As [LogSubCaseEmailInSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubCaseEmailInSetup.md), _
   ByVal _transaction_ As [IDbTransaction](#) _
) As [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md)

public [ToolkitResult](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.ToolkitResult.md) LogSubCaseEmailIn( 
   [LogSubCaseEmailInSetup](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.LogSubCaseEmailInSetup.md) _setup_,
   [IDbTransaction](#) _transaction_
)

#### Parameters

_setup_

Setup object for API invocation.

_transaction_

Database transaction under which the API will be invoked.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~LogSubCaseEmailIn.md)
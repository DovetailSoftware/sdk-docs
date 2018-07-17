     AppendHistoryToCase(String,String,IDbTransaction) Method                                                   

fcSDK Documentation

AppendHistoryToCase(String,String,IDbTransaction) Method

Identifier of the Case which the history is being appended.

Text to append to the case history.

Database transaction under which the API will be invoked.

Append text to a Case's history.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendHistoryToCase( _
   ByVal _caseIdNumber_ As String, _
   ByVal _stringToAppendToHistory_ As String, _
   ByVal _dbTransaction_ As [IDbTransaction](#) _
) 

public void AppendHistoryToCase( 
   string _caseIdNumber_,
   string _stringToAppendToHistory_,
   [IDbTransaction](#) _dbTransaction_
)

#### Parameters

_caseIdNumber_

Identifier of the Case which the history is being appended.

_stringToAppendToHistory_

Text to append to the case history.

_dbTransaction_

Database transaction under which the API will be invoked.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AppendHistoryToCase.md)
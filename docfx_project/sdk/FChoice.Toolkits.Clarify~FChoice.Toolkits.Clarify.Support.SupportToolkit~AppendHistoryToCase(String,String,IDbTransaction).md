### AppendHistoryToCase(String,String,IDbTransaction) Method

Identifier of the Case which the history is being appended.

Text to append to the case history.

Database transaction under which the API will be invoked.

Append text to a Case's history.

Syntax

```vbnet
'Declaration

Public Overloads Sub AppendHistoryToCase( _
   ByVal _caseIdNumber_ As String, _
   ByVal _stringToAppendToHistory_ As String, _
   ByVal _dbTransaction_ As IDbTransaction _
) 
```

```csharp
public void AppendHistoryToCase( 
   string _caseIdNumber_,
   string _stringToAppendToHistory_,
   IDbTransaction _dbTransaction_
)
```

#### Parameters

_caseIdNumber_

Identifier of the Case which the history is being appended.

_stringToAppendToHistory_

Text to append to the case history.

_dbTransaction_

Database transaction under which the API will be invoked.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AppendHistoryToCase.md)
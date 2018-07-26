### AppendHistoryToSubCase(String,String,IDbTransaction) Method

Identifier of the Subcase which the history is being appended.

Text to append to the case and subcase history.

Database transaction under which the API will be invoked.

Append text to a Subcase and Case's history.

Syntax

```vbnet
'Declaration

Public Overloads Sub AppendHistoryToSubCase( _
   ByVal _subCaseIdNumber_ As String, _
   ByVal _stringToAppendToHistory_ As String, _
   ByVal _dbTransaction_ As IDbTransaction _
) 
```

```csharp
public void AppendHistoryToSubCase( 
   string _subCaseIdNumber_,
   string _stringToAppendToHistory_,
   IDbTransaction _dbTransaction_
)
```

#### Parameters

_subCaseIdNumber_

Identifier of the Subcase which the history is being appended.

_stringToAppendToHistory_

Text to append to the case and subcase history.

_dbTransaction_

Database transaction under which the API will be invoked.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SupportToolkit Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit.md)  
[SupportToolkit Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit_members.md)  
[Overload List](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.Support.SupportToolkit~AppendHistoryToSubCase.md)
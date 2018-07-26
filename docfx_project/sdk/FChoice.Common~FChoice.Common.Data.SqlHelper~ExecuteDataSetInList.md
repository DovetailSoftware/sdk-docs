### ExecuteDataSetInList Method

Executes a specially formatted SQL statement specified in the [CommandText Property](FChoice.Common~FChoice.Common.Data.SqlHelper~CommandText.md)

Syntax

```vbnet
'Declaration

Public Function ExecuteDataSetInList( _
   ByVal _inList_() As Object, _
   ByVal _columnName_ As String _
) As DataSet
```

```csharp
public DataSet ExecuteDataSetInList( 
   object\[\] _inList_,
   string _columnName_
)
```

#### Parameters

_inList_

_columnName_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[SqlHelper Class](FChoice.Common~FChoice.Common.Data.SqlHelper.md)  
[SqlHelper Members](FChoice.Common~FChoice.Common.Data.SqlHelper_members.md)
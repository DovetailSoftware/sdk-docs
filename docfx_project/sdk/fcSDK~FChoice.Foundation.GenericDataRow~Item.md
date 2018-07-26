### Item Property (GenericDataRow)

Gets or sets data stored in a specified column.

In C#, this property is the indexer for the **GenericDataRow** class.

Syntax

```vbnet
'Declaration

Public Shadows Default Property Item( _
   ByVal _column_ As DataColumn, _
   ByVal _version_ As DataRowVersion _
) As Object
```

```csharp
public new object this\[ 
   DataColumn _column_,
   DataRowVersion _version_
\]; {get; set;}
```

#### Parameters

_column_

_version_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)
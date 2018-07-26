### RelateByID Method (GenericDataRow)

Unique Id of a row you wish to relate to this **GenericDataRow.**

The relation name

Relate a unique identifier to this GenericDataRow via a [SchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) name.

Syntax

```vbnet
'Declaration

Public Sub RelateByID( _
   ByVal _uniqueId_ As Object, _
   ByVal _relationName_ As String _
) 
```

```csharp
public void RelateByID( 
   object _uniqueId_,
   string _relationName_
)
```

#### Parameters

_uniqueId_

Unique Id of a row you wish to relate to this **GenericDataRow.**

_relationName_

The relation name

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)
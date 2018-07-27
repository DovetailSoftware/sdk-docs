### RelateRecord Method

The row which the current **GenericDataRow** is being related to.

The relation name

Relate a given row to this GenericDataRow via a [SchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) name.

#### Syntax

```vbnet
'Declaration

Public Sub RelateRecord( _
   ByVal _otherRow_ As GenericDataRow, _
   ByVal _relationName_ As String _
) 
```

```csharp
public void RelateRecord( 
   GenericDataRow _otherRow_,
   string _relationName_
)
```

#### Parameters

_otherRow_

The row which the current **GenericDataRow** is being related to.

_relationName_

The relation name

#### Remarks

The **relationName** must be a valid relation available between the two Generic's object types.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)
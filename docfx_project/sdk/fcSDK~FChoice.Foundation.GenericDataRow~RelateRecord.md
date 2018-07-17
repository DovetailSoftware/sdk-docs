     RelateRecord Method                                                   

fcSDK Documentation

RelateRecord Method

The row which the current **GenericDataRow** is being related to.

The relation name

Relate a given row to this [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) via a [SchemaRelation](fcSDK~FChoice.Foundation.Schema.ISchemaRelation.md) name.

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub RelateRecord( _
   ByVal _otherRow_ As [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md), _
   ByVal _relationName_ As String _
) 

public void RelateRecord( 
   [GenericDataRow](fcSDK~FChoice.Foundation.GenericDataRow.md) _otherRow_,
   string _relationName_
)

#### Parameters

_otherRow_

The row which the current **GenericDataRow** is being related to.

_relationName_

The relation name

Remarks

The **relationName** must be a valid relation available between the two Generic's object types.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[GenericDataRow Class](fcSDK~FChoice.Foundation.GenericDataRow.md)  
[GenericDataRow Members](fcSDK~FChoice.Foundation.GenericDataRow_members.md)
### AddForUpdate(Int32) Method

The objid of the row to use for updating

Creates a new row in the **ClarifyGeneric** with the specified [objId](fcSDK~FChoice.Foundation.GenericDataRow~UniqueID.md) which will be used to update an existing row in the database rather than inserting a new one.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function AddForUpdate( _
   ByVal _objId_ As [Integer](#) _
) As [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md)

public [ClarifyDataRow](fcSDK~FChoice.Foundation.Clarify.ClarifyDataRow.md) AddForUpdate( 
   [int](#) _objId_
)

#### Parameters

_objId_

The objid of the row to use for updating

#### Return Value

A newly created row populated with the specified objid

Remarks

Use this method when you know the uniqueId of an object in the database and making a database query to retrieve the row would be inefficient. Use the **GenericDataRow** returned to update the generic. When you are finished calling one of the **Update** methods on the **FCGeneric** or **GenericDataRow** will commit the changes to the database.

**Note:** The objId must be a legal identifier for the [Table](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric~SchemaTable.md) the Generic belongs to.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)
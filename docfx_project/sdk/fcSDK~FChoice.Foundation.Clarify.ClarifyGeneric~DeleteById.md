### DeleteById Method

The objid of the row to delete

Deletes the row in the table with the specified objid

#### Syntax

```vbnet
'Declaration

Public Sub DeleteById( _
   ByVal _objId_ As Integer _
) 
```

```csharp
public void DeleteById( 
   int _objId_
)
```

#### Parameters

_objId_

The objid of the row to delete

#### Remarks

This method will flag a specific objid in the current generic's table for deletion. No action is taken until [Update](fcSDK~FChoice.Foundation.FCGeneric~Update.md) or [UpdateAll](fcSDK~FChoice.Foundation.FCGeneric~UpdateAll.md) is called.

During an update, a blind DELETE statement to the database with a WHERE clause limiting it to deleting only the row with the specified objid.

**NOTE**: No error or other feedback is given if the specified row does not exist.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyGeneric Class](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md)  
[ClarifyGeneric Members](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric_members.md)
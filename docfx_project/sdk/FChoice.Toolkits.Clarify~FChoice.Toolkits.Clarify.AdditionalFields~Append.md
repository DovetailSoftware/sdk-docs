     Append Method                                                   

fcSDK Documentation

Append Method

Name of the database field to update.

Data type of the field being updated.

Value to put into the database field. This must be the appropriate type

Adds a field to be updated during the API invocation.

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub Append( _
   ByVal _field_ As String, _
   ByVal _fieldType_ As [AdditionalFieldType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFieldType.md), _
   ByVal _val_ As [Object](#) _
) 

public void Append( 
   string _field_,
   [AdditionalFieldType](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFieldType.md) _fieldType_,
   [object](#) _val_
)

#### Parameters

_field_

Name of the database field to update.

_fieldType_

Data type of the field being updated.

_val_

Value to put into the database field. This must be the appropriate type

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[AdditionalFields Class](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFields.md)  
[AdditionalFields Members](FChoice.Toolkits.Clarify~FChoice.Toolkits.Clarify.AdditionalFields_members.md)
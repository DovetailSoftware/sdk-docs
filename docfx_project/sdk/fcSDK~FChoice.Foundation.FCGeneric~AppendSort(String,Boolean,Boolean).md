     AppendSort(String,Boolean,Boolean) Method                                                   

fcSDK Documentation

AppendSort(String,Boolean,Boolean) Method

Name of the field to sort by

**true** if the sort order is Ascending. **false** if it is Descending.

**true** to validate whether the field specified in _fieldName_ is a valid field on this table. **false** to add the _fieldName_ without any verification.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Sub AppendSort( _
   ByVal _fieldName_ As String, _
   ByVal _isAscending_ As Boolean, _
   ByVal _checkField_ As Boolean _
) 

public void AppendSort( 
   string _fieldName_,
   bool _isAscending_,
   bool _checkField_
)

#### Parameters

_fieldName_

Name of the field to sort by

_isAscending_

**true** if the sort order is Ascending. **false** if it is Descending.

_checkField_

**true** to validate whether the field specified in _fieldName_ is a valid field on this table. **false** to add the _fieldName_ without any verification.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Overload List](fcSDK~FChoice.Foundation.FCGeneric~AppendSort.md)
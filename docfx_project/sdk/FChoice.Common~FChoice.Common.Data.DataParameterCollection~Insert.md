     Insert Method (DataParameterCollection)                                                   

Insert Method (DataParameterCollection)

The index at which to insert the parameter

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) to insert into the collection

Inserts the parameter at the specified index in the collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Sub Insert( _
   ByVal _index_ As [Integer](#), _
   ByVal _value_ As [Object](#) _
) 

public void Insert( 
   [int](#) _index_,
   [object](#) _value_
)

#### Parameters

_index_

The index at which to insert the parameter

_value_

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) to insert into the collection

Remarks

All parameters with higher indexes then this parameter will be shifted down one in index to accomodates the new parameter.  

Only instances of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) can be added to this collection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)
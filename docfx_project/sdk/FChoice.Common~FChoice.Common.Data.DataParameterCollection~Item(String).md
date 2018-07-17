     Item(String) Property                                                   

Item(String) Property

The name of the parameter whose value to get or set.

Gets or sets the [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) associated with the specific name in the collection.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads ReadOnly Property Item( _
   ByVal _name_ As String _
) As [IDbDataParameter](#)

public [IDbDataParameter](#) Item( 
   string _name_
) {get;}

#### Parameters

_name_

The name of the parameter whose value to get or set.

#### Property Value

The [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) associated with the specific name.

Remarks

The **_name_** argument is the natural name of the parameter. That is, it does not have any data provider-specific prefixes such as "@" for Microsoft SQL Server, or ":" for Oracle.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~Item.md)
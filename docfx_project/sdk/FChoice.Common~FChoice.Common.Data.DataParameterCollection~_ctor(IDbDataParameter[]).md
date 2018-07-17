     DataParameterCollection Constructor(IDbDataParameter\[\])                                                   

DataParameterCollection Constructor(IDbDataParameter\[\])

An array of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) classes which will be used to initially populate the new collection.

Creates a new instance of DataParameterCollection using the default [DbProvider](FChoice.Common~FChoice.Common.Data.DbProvider.md) and populated with an initial array of data parameters.

Syntax

```vbnet
```csharp

'Declaration
 

Public Function New( _
   ByVal _parameters_() As [IDbDataParameter](#) _
)

public DataParameterCollection( 
   [IDbDataParameter](#)\[\] _parameters_
)

#### Parameters

_parameters_

An array of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidbdataparameterclasstopic.htm) classes which will be used to initially populate the new collection.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DataParameterCollection Class](FChoice.Common~FChoice.Common.Data.DataParameterCollection.md)  
[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)  
[Overload List](FChoice.Common~FChoice.Common.Data.DataParameterCollection~_ctor.md)
### DataParameterCollection Class

Contains a collection of [IDbDataParameter](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataIDbDataParameterClassTopic.htm) objects for use in a database query.

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public Class DataParameterCollection
```

```csharp
[DefaultMemberAttribute("Item")]
public class DataParameterCollection
```

#### Remarks

Note that the parameters are keyed in the dictionary by their natural name, but the [IDataParameter.ParameterName](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdataidataparameterclassparameternametopic.htm) will contain the database-specific name. For example, a parameter's natural name (i.e. "name") will actually be "@name" in the IDataParameter if the data provider is Microsoft SQL Server, or ":name" for Oracle.

This allows implementors to not have to worry about the differences in parameter passing of the underlying database and refer to parameters by their natural, unaltered names.

#### Inheritance Hierarchy

[System.Object](https://msdn.microsoft.com/en-us/library/e5kfa45b(v=vs.110).aspx)

[FChoice.Common.Data.DataParameterCollection**

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)
**FChoice.Common.Data.DataParameterCollection**

#### Requirements

**Namespace:** [FChoice.Common.Data](FChoice.Common~FChoice.Common.Data_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[DataParameterCollection Members](FChoice.Common~FChoice.Common.Data.DataParameterCollection_members.md)
[FChoice.Common.Data Namespace](FChoice.Common~FChoice.Common.Data_namespace.md)

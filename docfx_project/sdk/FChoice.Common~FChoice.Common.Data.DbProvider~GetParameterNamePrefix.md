### GetParameterNamePrefix Method (DbProvider)

Gets the prefix used by the underlying database type for parameters in a parameterized query

Syntax

```vbnet
' Declaration

Public MustOverride Function GetParameterNamePrefix() As String

public abstract string GetParameterNamePrefix()

#### Return Value

The prefix used by the underlying database type for parameters in a parameterized query (i.e. "@" for MSSQL) or [String.Empty](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemStringClassEmptyTopic.htm) for providers which do not use prefixes or parameter names

Remarks

Some database and/or provider types do not use prefixes for parameters, or do not use parameter names at all. One example of this is the OleDb provider uses "?" for all parameters instead of a prefix + name. In this case, [String.Empty](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemStringClassEmptyTopic.htm) will be returned.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)
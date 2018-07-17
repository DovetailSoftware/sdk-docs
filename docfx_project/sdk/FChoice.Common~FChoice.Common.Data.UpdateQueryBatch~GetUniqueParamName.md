     GetUniqueParamName Method                                                   

GetUniqueParamName Method

The desired name for the parameter

Gets a unique parameter name among all the parameters for all the queries in this batch based off a suggested base name

Syntax

```vbnet
```csharp

'Declaration
 

Public Function GetUniqueParamName( _
   ByVal _baseName_ As String _
) As String

public string GetUniqueParamName( 
   string _baseName_
)

#### Parameters

_baseName_

The desired name for the parameter

#### Return Value

The desired name with numbers appended as necessary to guarantee uniqueness

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[UpdateQueryBatch Class](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch.md)  
[UpdateQueryBatch Members](FChoice.Common~FChoice.Common.Data.UpdateQueryBatch_members.md)
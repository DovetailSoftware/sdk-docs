### ConstructConnectionString Method

The set of keys and values that will make up the connection string where key and value are: _key=value;_

Constructs a valid ADO.NET-compliant connection string from the supplied key/value pairs.

Syntax

```vbnet
' Declaration
Public Shared Function ConstructConnectionString( _
   ByVal _keyValues_ As NameValueCollection _
) As String

public static string ConstructConnectionString( 
   NameValueCollection _keyValues_
)

#### Parameters

_keyValues_

The set of keys and values that will make up the connection string where key and value are: _key=value;_

#### Return Value

A properly formatted ADO.NET-compliant connection string.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)
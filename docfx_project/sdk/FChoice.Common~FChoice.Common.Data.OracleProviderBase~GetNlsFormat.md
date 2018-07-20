### GetNlsFormat Method

An instance of an OracleProviderBase implementation that will be used for connecting to the database and retrieving the NLS format.

Executes a query to retrieve the database user's configured NLS format

Syntax

```vbnet
' Declaration

Public Shared Function GetNlsFormat( _
   ByVal _provider_ As [OracleProviderBase](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md) _
) As String

public static string GetNlsFormat( 
   [OracleProviderBase](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md) _provider_
)

#### Parameters

_provider_

An instance of an OracleProviderBase implementation that will be used for connecting to the database and retrieving the NLS format.

#### Return Value

The NLS format string

[!include[Requirements](../partials/requirements.md)]



#### Reference

[OracleProviderBase Class](FChoice.Common~FChoice.Common.Data.OracleProviderBase.md)  
[OracleProviderBase Members](FChoice.Common~FChoice.Common.Data.OracleProviderBase_members.md)
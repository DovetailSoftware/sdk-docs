### ParseConnectionString Method

A valid ADO.NET connection string to parse (in the format of name=value;name2=value2;)

Parses a connection string into name-value pairs

Syntax

```vbnet
' Declaration
Public Shared Function ParseConnectionString( _
   ByVal _connectStr_ As String _
) As NameValueCollection

public static NameValueCollection ParseConnectionString( 
   string _connectStr_
)

#### Parameters

_connectStr_

A valid ADO.NET connection string to parse (in the format of name=value;name2=value2;)

#### Return Value

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionClassTopic.htm) of the name-value pairs contained in the connection string

Remarks

A trailing semi-colon is not required. For more information about the format of the connection string and possible parameters, please see the [SqlConnection.ConnectionString](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatasqlclientsqlconnectionclassconnectionstringtopic.htm) property documentation. Oracle and other connection strings follow the same general rules and expose most of the same parameters as a [SqlConnection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm) connection string.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[DbProvider Class](FChoice.Common~FChoice.Common.Data.DbProvider.md)  
[DbProvider Members](FChoice.Common~FChoice.Common.Data.DbProvider_members.md)  
[SqlConnection Class](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemDataSqlClientSqlConnectionClassTopic.htm)  
[ConnectionString property](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemdatasqlclientsqlconnectionclassconnectionstringtopic.htm)
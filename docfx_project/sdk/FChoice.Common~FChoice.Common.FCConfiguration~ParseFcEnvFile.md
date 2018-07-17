     ParseFcEnvFile Method                                                   

ParseFcEnvFile Method

The relative or absolute file system path to the text file which contains FCFL(COM) FC.ENV-style contents.

Provided for legacy compatibility support, this method will parse an FC.ENV-style configuration file from the specified file path.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Function ParseFcEnvFile( _
   ByVal _filePath_ As String _
) As NameValueCollection

public static NameValueCollection ParseFcEnvFile( 
   string _filePath_
)

#### Parameters

_filePath_

The relative or absolute file system path to the text file which contains FCFL(COM) FC.ENV-style contents.

#### Return Value

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values read from the file.

Exceptions

| Exception | Description |
| --- | --- |
| [FCInvalidConfigurationException](FChoice.Common~FChoice.Common.FCInvalidConfigurationException.md) | The file cannot be accessed (see InnerException) or the file contains syntax errors. |

Remarks

If you wish to use an FC.ENV-style file to configure your application, you can use this file to produce a set of configuration values. If you wish to then pass them to [LoadEnvironmentSettings](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings.md), you must first construct the connection string and assign the value with the key [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md). To produce a provider-specific connection string from a set of values (db_type, db_server, db_name, etc), use the [CreateConnectionString](FChoice.Common~FChoice.Common.Data.DbProvider~CreateConnectionString.md) method on the current provider: [DbProviderFactory.Provider](FChoice.Common~FChoice.Common.Data.DbProviderFactory~Provider.md).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)
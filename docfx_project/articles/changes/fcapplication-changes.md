# FCApplication Changes

## ProgID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCFL.FCApplication | FCFLCompat.FCApplication |

## Interface Name, IID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| _FCApplication<br/>C32E188E-EEBC-43B4-A977-BA0D63CF9BC3 | IFCApplication<br/>76778FF4-8666-4eba-A60A-DA8D9F743A64 |


## CoClass Name, CLSID

| FCFL | FCFL.NET Compatibility |
|:--- |:--- |
| FCApplication<br/>6CBF6E43-D667-4A01-AE0E-D25C24F2F67D | FCApplication<br/>96EFBAF6-4FA0-4f71-A012-910F6CF61120 |

## Object Creation in FCFL

Using FCFL, your code would look something like the following:

[JavaScript]
```
var FCApp = Server.CreateObject("FCFL.fcapplication");
```

[Visual Basic]
```vbnet
Dim FCApp
Set FCApp = CreateObject("FCFL.fcapplication")
```

## Object Creation in FCFL.NET Compatibility

Using FCFL.NET Compatibility, your code would look something like the following:

[JavaScript]
```
var FCApp = Server.CreateObject("FCFLCompat.fcapplication");
```

[Visual Basic]
```vbnet
Dim FCApp
Set FCApp = CreateObject("FCFLCompat.fcapplication")
```

## Changed Properties

The following properties have changed between FCFL.FCApplication and FCFLCompat.FCApplication.

| Changed Property | FCFL.FCApplication | FCFLCompat.FCApplication |
|:--- |:--- |:--- |
| base_objid | read/write | read-only |
| clarify_ver | read/write | read-only |
| ConnectionString | read/write | read-only |
| db_name | read/write | read-only |
| db_type | read/write | read-only |
| IsDBTraveler | read/write | read-only |
| IsDBUnicode | read/write | read-only |
| schema_rev | read/write | read-only |
| site_id | read/write | read-only |
| ServerTimeZone | FCFL sets the ServerTimeZone to the schema's default timezone during FCApp.Initialize and when UpdateCache is called. | In FCFL.NET the ServerTimeZone is set to the schema's default timezone only during application initialization. |

## Changed Methods

The following methods have changed between FCFL.FCApplication and FCFLCompat.FCApplication.

| Changed Method | FCFL.FCApplication | FCFLCompat.FCApplication |
|:--- |:--- |:--- |
| InitializeFull |  | The following logging parameters are ignored:<br/><ul><li>LogFile</li><li>SqlLogFile</li><li>fcAppLogging</li><li>fcSessionLogging</li><li>fcGenericLogging</li><li>fcBulkLogging</li><li>fcSqlExecLogging</li><li>NoCacheFile</li></ul><br/>Refer to the Configuration Changes section of this document for more details on configuring logging. |
| is_it_a_field | Parameters are ByRef | Parameters are ByVal |
| is_it_a_table | Parameters are ByRef | Parameters are ByVal |
| is_it_change_field | Parameters are ByRef | Parameters are ByVal |
| is_it_int_field | Parameters are ByRef | Parameters are ByVal |
| is_it_searchable | Parameters are ByRef | Parameters are ByVal |
| is_it_string_fld | Parameters are ByRef | Parameters are ByVal |
| is_it_unicode | Parameters are ByRef | Parameters are ByVal |
| is_rel_exclusive | Parameters are ByRef | Parameters are ByVal |
| is_rel_mandatory | Parameters are ByRef | Parameters are ByVal |

## New Properties

The following properties are new in FCFLCompat.FCApplication.

| New Property | Comments |
|:--- |:--- |
| LoggingConfigFilePath | The path and filename of a valid logging configuration file. Refer to the [Configuration Changes](configuration-changes.md) section of this document for more details.<br/>**Note:** You must set this property before calling [FCApplication.Initialize]() for it to take effect. |
| DataProtectorEntropy | Essentially the "password" that was used to encrypt data protected configuration parameters. Please see [Basic Configuration](/articles/basic-configuration.md) for Data Protection details.<br/>**Note:** You must set this property before calling [FCApplication.Initialize]() for it to take effect. |

## New Methods

The following methods are new in FCFLCompat.FCApplication.

| New Method | Comments |
|:--- |:--- |
| LogEx(string logLevel, string logMessage) | Alternate logging method that allows setting the log level. This method is similar to [Logger.Log]() except that the log level is a string representation of the [LogLevel]() enumeration (e.g "DEBUG", "INFO", "ERROR"). |

_InitializeFull_
----------------

**Object and Type**

Object  : FCApplication

Type     : Method

**Prototype**

```
Public Sub InitializeFull( LoginName As String, password As String, _
				DBServer As String, DBName As String, _
				Optional DBType As String, _
				Optional LogFile As String, _
				Optional SqlLogFile As String, _
				Optional SQLLogging As Boolean, _
				Optional fcAppLogging As Boolean, _
				Optional fcSessionLogging As Boolean, _
				Optional fcGenericLogging As Boolean, _
				Optional fcBulkLogging As Boolean, _
				Optional fcSqlExecLogging As Boolean, _
				Optional NoCacheFile As Boolean)
```

#### Description

This method is similar to the Initialize method, in that it initializes the FCApplication. However, rather than reading data from an fc.env file, the necessary login parameters are passed into this method.

This method initializes the FCApplication, including:

*  Logging into the database
*  Opening Log Files
*  Caching schema data
*  Caching meta-data
*  Writing cached meta-datafor additional  information on the parameters,  refer to the _fc.env_ section of the **FCFL** user guide.

#### Parameters

| Parameter Name | Required? | Description |
|:--- |:--- |:--- |
| LoginName | Yes | Country Name |
| Password | Yes | Password |
| DBServer | Yes | Database Server Name |
| DBName | Yes | Database Name |
| DBType | No | Database Type. Default value is MSSQL. |
| LogFile | No | Log File Name |
| SqlLogFile | No | SQL Log File Name |
| fcAppLogging | No | Log FCApplication Methods/Properties? |
| fcSessionLogging | No | Log FCSession Methods/Properties? |
| fcGenericLogging | No | Log FCGeneric Methods/Properties? |
| fcBulkLogging | No | Log FCBulk Methods/Properties? |
| fcSqlExecLogging | No | Log FCSqlExec Methods/Properties? |
| NoCacheFile | No | If true, don't write XML cache files to disk |

**Example**

The following example initializes the FCApplication object..

**JavaScript:**
```
var FCApp = new ActiveXObject("FCFL.fcapplication");

FCApp.InitializeFull("sa","MyPassword","MyServer","MyDatabase", "MSSQL");
```
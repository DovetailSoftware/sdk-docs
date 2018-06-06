# Configuring Session State Managers

When a new user is logged in using CreateSession there is a session management mechanism present to keep track of this relatively expensive object across web application requests (web applications being the bulk of **fcSDK** deployments.) This session management mechanism is pluggable and is handled by objects called State Managers. Out of the box, **fcSDK** provides two main types of State Managers: in-memory and remote state managers.

## Memory State Manager

The most common and default session provider is the [MemoryStateManager](/api/FChoice.Common.State.MemoryStateManager.yml). Nothing special needs to be done to use this manager. The only setting you may wish to change is the session timeout which is talked about in Configuring a State Manager below. The rest of this document will discuss the other, more complex, type of manager Remote State Managers.

## Remote State Managers

Remote State Managers allow sessions to be shared across many different web servers in an enterprise environment. The user's session object is serialized to a centralized repository, usually a database, using one of the Remote State Manager objects. The object used depends on the type of datastore into which the session is being serialized.

The ability to use a single session across multiple web servers allows your application to scale on demand. If the number of users hitting your current web server are starting to hurt performance with Remote State Managers enabled you can easily throw more web servers at the problem.

* [Database Setup]()
* [State Managers](#state-managers)
* [Classic Web Application Configuration]()
* [&lt;stateManager&gt; Element Schema]()

## Database Setup

Remote state managers use a database to persist their state information. A new database table is used to store each user's state information. On MSSQL databases, there are also new stored procedures that need to be created. A SQL script template is provided to assist in setting up the required database table and stored procedures. Be aware that it is not required that the database used as a repository for state management be the same database server or instance being used for Clarify. In fact, using a separate database instance may be desirable to reduce the load on your Clarify database instance.

The following database setup is required for Remote Sessions:

1. The required SQL table (and stored procedures for MSSQL databases) needs to be created.
1. The database login being used needs to be granted ALL access to the FCStateManager table, and for stored procedures on MSSQL.
1. A connection string using this database login needs to be constructed for use in the configuration file.

There are SQL scripts for each supported database system in the **fcSDK** install directory that assist in accomplishing these steps:

* MSSQL- *&lt;fcSDK Install Directory&gt;/sql/remotesession/mssql_remotesession.sql*
* Oracle - *&lt;fcSDK Install Directory&gt;/sql/remotesession/oracle_remotesession.sql*

**Important** - The SQL scripts are designed to be edited before execution. Please read the script comments in the individual files for further assistance. If you need help on how to execute SQL scripts please see the [**fcSDK** Installation Guide]().

## State Managers

The [StateManager](/api/FChoice.Common.State.StateManager.yml) object abstracts the act of storing and retrieving the user's session data. In order to take advantage of Remote Sessions you need to configure your application to use an appropriate state manager. You also need to do the following configuration if you wish to set the timeout of the [MemoryStateManager]().

The **fcSDK** provides the following state managers:

### fcSDK State Managers

| Name | Fully Qualified Type Name (type=...) | Description |
|:--- |:--- |:--- |
| Memory | FChoice.Common.State.MemoryStateManager, FChoice.Common, Version=x.x.x.x, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8 | Default state manager if none is specified in the configuration file. |
| MSSQL | FChoice.Common.State.MsSqlStateManager, FChoice.Common, Version=x.x.x.x, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8 | MSSQL state manager. |
| Oracle | FChoice.Common.State.OracleStateManager, FChoice.Common, Version=x.x.x.x, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8 | Oracle state manager. If Oracle is used as a state repository it is recommended that you use this state manager. |
| ODP.Net | FChoice.DataProviders.ODPNet.ODPNetStateManager, FChoice.DataProviders.ODPNet, Version=x.x.x.x, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8 | Alternative Oracle state manager supporting Oracle 8i databases and above. |

### Configuring a State Manager

The first time that the [StateManager]() is accessed it looks in the .NET configuration file for a specific configuration section called "stateManager".

You must define this section at the top of the configuration file in the "configSections" element.
Following the configSection comes the "stateManager" element which will contain the details of the state manager configuration. See the [stateManager schema]() for more details.

For example:

```
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <configSections>
    <section name="stateManager" type="FChoice.Common.State.StateManagerSectionHandler, FChoice.Common"/>
    <!-- other config sections if present -->
  </configSections>    

  <stateManager timeout="20" applicationName="fcClient" type="FChoice.Common.State.OracleStateManager, FChoice.Common" >
    <database connectionstring="Data Source=MYOracleSID; User Id=user;Password=pass;" />
  </stateManager>

  <!-- rest of config file -->
    
</configuration>
```

If no state manager configuration information is present, StateManager will use the in-memory state manager effectively disabling the remote session feature.

### &lt;stateManager&gt; Element Schema

This table describes the attributes required for the stateManager element within the configuration.

| Element | Attribute | Required | Description |
|:--- |:--- |:--- |:--- |
| stateManager | timeout | <span style="color:red;">Yes</span> | Timeout (in minutes) of the state. State that is not loaded within the timeout period is subject to removal when RemoveExpiredStates is called. Note: the **fcSDK** calls RemoveExpiredStates when creating a session. |
| stateManager | applicationName | <span style="color:red;">Yes</span> | Name of the application (e.g. "fcClient") being remoted. Sessions are grouped by the application name value, allowing you to view which sessions are associated with a specific application. For example this is used by fcClient to view the current sessions for the application. |
| stateManager | type | <span style="color:red;">Yes</span> | The fully qualified type name of a class which derives from FChoice.Common.State.IStateManager. Please see [State Managers](#state-managers).<br/>**NOTE:** Please refer to the [Type.GetType](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfsystemtypeclassgettypetopic1.htm) method documentation for more information on .Net type naming conventions. |
| **Only applies to Remote Managers** |
| database | connectionstring | <span style="color:red;">Yes</span> | The connection string used to connect to the database being used as a state repository. |

## Classic Web Application Configuration

When configuring state managers for ASP web applications using the **fcSDK** via the Compatibility layer, configuration becomes difficult as ASP was not designed with .Net in mind and does not support an application configuration file in the traditional sense. For this scenario we have provided an alternative way of configuring database Providers via a separate configuration file.

### Specifying the statemanager configuration file.

There is a special [application configuration setting](basic-configuration.md), **"fchoice.statemanager.configurationfile"**, which allows the **fcSDK** to bypass the application configuration file and directly use another xml file to configure the state managers.

This example shows an example **fc.env** used by many Dovetail Software applications to tell the **fcSDK** where to look for the custom dbprovider configuration file.

```
;begin fc.env file...
; ... other settings ...
fchoice.statemanager.configurationfile=c:\app\fcclient\remotesession.config
```

### Fully qualified state manager type names

To facilitate extensibility the **fcSDK** state manager is a plug-in type mechanism which depends on loading classes at runtime. In the examples above a "partially qualified" class name is used, only specifying the name of the class and the assembly (dll) where that class can be found. This usually works fine for pure dotnet scenarios. When running Compatiblity layer applications requiring a remote state manager the configuration file must use fully qualified class names. You can find a list of the fully qualified state manager type names above in [State Managers](#state-managers).

### Example alternative configuration file

The following example shows the contents of a configuration file using fully qualified names.

```
<!-- begin remotesession.config -->
<stateManager timeout="20" 
              applicationName="fcClient" 
              type="FChoice.DataProviders.ODPNet.ODPOracleProvider, FChoice.DataProviders.ODPNet, Version=2.0.2.1, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8" >
  <database connectionstring="Data Source=MYOracleSID; User Id=user;Password=pass;" />
</stateManager>
```

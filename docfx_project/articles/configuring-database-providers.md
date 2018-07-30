# Configuring Database Providers

Database access in fcSDK has been abstracted into objects called DbProviders. There are providers for Microsoft SQL Server and Oracle built into the core fcSDK. When using these built in providers you are not required to do any special configuration. If you wish to use the alternative Oracle provider ODP.Net you are required to configure the DbProvider using the application configuration file. Providers can be accessed via the DbProviderFactory with the default being specified via the "fchoice.dbtype" application configuration setting.

### Configuring a Custom Database Provider

The DbProviderFactory looks in the .NET configuration file for a specific configuration section called "dataAccess". You must define this section at the top of the configuration file in the "configSections" element. Following the conficSection comes the "dataAccess" element which will containing the "provider" elements.

For example:
```
<?xml version="1.0" encoding="utf-8" ?>
<configuration>
  <configSections>
    <section name="dataAccess" type="FChoice.Common.Data.DataAccessSectionHandler, FChoice.Common"/>
    <!-- other config sections if present -->
  </configSections>    

  <dataAccess>
    <provider 
       alias="ODPNet"
       type="FChoice.DataProviders.ODPNet.ODPOracleProvider, FChoice.DataProviders.ODPNet"/>
  </dataAccess>
    
  <!-- rest of config file -->
    
</configuration>
```

In the example a single custom DbProvider is defined using the using the "provider" element. It is possible to configure one or more providers in this way.

### Example of a custom provider: The Oracle&trade; Data Provider for .NET

The **fcSDK** includes a custom provider which uses the Oracle&trade; Data Provider for .NET rather than the Microsoft ADO.NET provider for Oracle which ships with the .NET Framework. If you wish to use this provider, refer to the configuration example above.

### <provider> Element Schema

This table describes the attributes required for the provider element.

| Attribute | Required | Description |
| alias | Yes | A key used by DbProviderFactory to distinguish this provider. An instance of the DbProvider can be created and loaded by DbProviderFactory by calling DbProviderFactory.CreateProvider method.<br><br>Be careful not to use one of the built in aliases that are always present:<br><ul><li>"MSSQL" - Microsoft Sql Server</li><li>"ORACLE"- Oracle Databases</li></ul> |
| type | Yes | The fully qualified type name of a class which derrives from FChoice.Common.DbProvider.<br><br>**NOTE:** Please refer to the Type.GetType method documentation for information for the specific format of the value of this attribute. |

### Classic Web Application Configuration

When configuring database Providers for ASP web applications using the **fcSDK** via the Compatibility layer, configuration becomes difficult as ASP was not designed with .Net in mind and does not support an application configuration file in the traditional sense. For this scenario we have provided an alternative way of configuring database Providers via a seperate configuration file.

### Specifing a Separate DbProvider Configuration File

There is an application configuration setting, "fchoice.dbprovider.configurationfile", which allows the fcSDK to bypass the application configuration file and directly use another xml file to configure the database Providers.

This example shows an example **fc.env** used by many Dovetail Software applications to tell the **fcSDK** where to look for the remote session configuration file.

```
;begin fc.env file...
; ... other settings ...
fchoice.dbprovider.configurationfile=c:\app\fcclient\dbprovider.config
```

### Fully qualified DbProvider type names

To facilitate extensibility the **fcSDK** provider mechanism is a plug-in type mechanism which depends on loading classes at runtime. In the examples above a "partially qualified" class name is used only specifying the name of the class and the assembly (dll) where that class can be found. This usually works fine for pure dotnet scenarios. When running Compatiblity layer applications needing to configure custom dbproviders the configuration file must use fully qualified class names. The table below shows the fully qualified name (with version number missing) of the custom providers that come with the fcSDK.

| Name | Fully Qualified Type Name (type=...) | Description |
| ODP.NET | FChoice.DataProviders.ODPNet.ODPOracleProvider, FChoice.DataProviders.ODPNet, Version=x.x.x.x, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8 | Alternative Oracle DbProvider allowing access to Oracle 8i databases and above. |

**NOTE:** If copying from this table be aware that you will need to fill in the proper version number, most likely the shipping version number for the fcSDK. Also, be careful as there are no line breaks in a fully qualified name.

### Example alternative configuration file.

The following example shows the contents of a configuration file using fully qualified names.

```
<dataAccess>
	<provider 
		alias="ODPNet"
		type="FChoice.DataProviders.ODPNet.ODPOracleProvider, FChoice.DataProviders.ODPNet, Version=2.0.0.8, Culture=neutral, PublicKeyToken=48c955ba8dfd90d8"/>
</dataAccess>
```

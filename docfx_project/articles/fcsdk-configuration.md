# Configuration in .NET

---

The .NET Framework provides a standardized way of configuring .NET applications using ".config" or "application configuration" files. For Windows EXE executables, this file is usually named (app).exe.config. For ASP.NET web applications, this file is called "web.config" and lives in the root directory of your ASP.NET application. This file can contain configuration for both the .NET Framework itself and the application. For more information on application configuration basics in .NET, please read the section entitled Configuring Applications in the .NET Framework SDK Documentation. 

Application configuration files are in an XML format. .NET expects the XML to be formatted according to a specific tag schema. This is outlined in the .NET Framework SDK documentation under the heading Configuration File Schema. 

## Configuring fcSDK

---

The fcSDK uses the .NET Application Configuration mechanism to read load-time configurable settings. There are several load-time configurable options supported by fcSDK. These are: 

* Database type and connection string 
* Behavioral settings such as security, cache file control, database provider update batching, etc. 
* Custom cache providers 
* Custom database providers 
* Logging 

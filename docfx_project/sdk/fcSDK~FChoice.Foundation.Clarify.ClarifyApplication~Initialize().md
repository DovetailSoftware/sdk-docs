### Initialize() Method

Initializes ClarifyApplication using the application configuration.

Syntax

```vbnet
' Declaration

Public Overloads Shared Function Initialize() As [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)

public static [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) Initialize()

#### Return Value

The newly created and initialized singleton instance of [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)

Remarks

Initialize can only be called once per application domain. Once initialized, [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) cannot be uninitialized or reinitialized in that application domain.

Initialize requires one configuration parameter: The database connection string. The key for this value in the [appSettings](ms-help://MS.NETFrameworkSDKv1.1/cpgenref/html/gngrfappsettingselement.htm) section of the [application configuration file](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconconfiguringnetframeworkapplications.htm) must be the value specified in the [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md) field.

For more information on configuring .NET applications via configuration file, see [Configuration Applications](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconconfiguringnetframeworkapplications.htm) in the .NET Framework SDK documentation.

[!include[Requirements](../partials/requirements.md)]



#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md)
     Initialize Method (ClarifyApplication)                                                   

fcSDK Documentation

Initialize Method (ClarifyApplication)

Initializes ClarifyApplication using the application configuration.

Initializes ClarifyApplication using the application configuration or the specified [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionClassTopic.htm)

Overload List

| Overload | Description |
| --- | --- |
| [Initialize()](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize().md) | Initializes ClarifyApplication using the application configuration.   |
| [Initialize(NameValueCollection)](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize(NameValueCollection).md) | Initializes ClarifyApplication using values in the specified [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionClassTopic.htm)   |

Remarks

Initialize can only be called once per application domain. Once initialized, [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) cannot be uninitialized or reinitialized in that application domain.

Initialize requires one configuration parameter: The database connection string. The key for this value in the [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionClassTopic.htm) or in the [appSettings](ms-help://MS.NETFrameworkSDKv1.1/cpgenref/html/gngrfappsettingselement.htm) section of the [application configuration file](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconconfiguringnetframeworkapplications.htm) must be the value specified in the [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md) field.

For more information on configuring .NET applications via configuration file, see [Configuration Applications](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconconfiguringnetframeworkapplications.htm) in the .NET Framework SDK documentation.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)
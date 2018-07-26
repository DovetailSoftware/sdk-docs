### Initialize(NameValueCollection) Method

The configuration values to use for ClarifyApplication

Initializes ClarifyApplication using values in the specified [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionClassTopic.htm)

Syntax

```vbnet
'Declaration

Public Overloads Shared Function Initialize( _
   ByVal _configValues_ As NameValueCollection _
) As ClarifyApplication
```

```csharp
public static ClarifyApplication Initialize( 
   NameValueCollection _configValues_
)
```

#### Parameters

_configValues_

The configuration values to use for ClarifyApplication

#### Return Value

The newly created and initialized singleton instance of ClarifyApplication

Remarks

Initialize can only be called once per application domain. Once initialized, [ClarifyApplication](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md) cannot be uninitialized or reinitialized in that application domain.

Initialize requires one configuration parameter: The database connection string. The key for this value in the **_configValues_** collection must be the value specified in the [ConfigValues.CONNECT_STRING](FChoice.Common~FChoice.Common.ConfigValues~CONNECT_STRING.md) field.

For more information on configuring .NET applications via configuration file, see [Configuration Applications](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconconfiguringnetframeworkapplications.htm) in the .NET Framework SDK documentation.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[ClarifyApplication Class](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication.md)  
[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)  
[Overload List](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md)
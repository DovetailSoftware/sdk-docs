     LoadEnvironmentSettings(NameValueCollection) Method                                                   

LoadEnvironmentSettings(NameValueCollection) Method

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values with which to attempt a load configuration values.

Forces a load of new configuration values, using the supplied collection if possible.

Syntax

```vbnet
```csharp

'Declaration
 

Public Overloads Shared Function LoadEnvironmentSettings( _
   ByVal _initialValues_ As NameValueCollection _
) As NameValueCollection

public static NameValueCollection LoadEnvironmentSettings( 
   NameValueCollection _initialValues_
)

#### Parameters

_initialValues_

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values with which to attempt a load configuration values.

#### Return Value

A [NameValueCollection](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemCollectionsSpecializedNameValueCollectionMembersTopic.htm) of values produced by loading the environment settings either from the provided collection, from the current application configuration, or a merge of both.

Exceptions

| Exception | Description |
| --- | --- |
| [FCInvalidConfigurationException](FChoice.Common~FChoice.Common.FCInvalidConfigurationException.md) | One or more required configuration values was not found in the specified initialValues collection. |

Remarks

Required parameters will be checked and a FCConfiguration will force a reload of settings based on the supplied values when this method is called.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCConfiguration Class](FChoice.Common~FChoice.Common.FCConfiguration.md)  
[FCConfiguration Members](FChoice.Common~FChoice.Common.FCConfiguration_members.md)  
[Overload List](FChoice.Common~FChoice.Common.FCConfiguration~LoadEnvironmentSettings.md)
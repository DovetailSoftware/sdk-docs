### DefaultCulture Property

Returns the default [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.

Syntax

```vbnet
'Declaration

Public ReadOnly Property DefaultCulture As CultureInfo
```

```csharp
public CultureInfo DefaultCulture {get;}
```

#### Property Value

Returns the default [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.

Remarks

This is the CultureInfo that is used unless the [CurrentCulture](fcSDK~FChoice.Foundation.FCSession~CurrentCulture.md) property is set.

This value currently defaults to the [InstalledUICulture](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemGlobalizationCultureInfoClassInstalledUICultureTopic.htm).

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)
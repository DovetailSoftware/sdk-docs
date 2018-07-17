     DefaultCulture Property                                                   

fcSDK Documentation

DefaultCulture Property

Returns the default [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property DefaultCulture As [CultureInfo](#)

public [CultureInfo](#) DefaultCulture {get;}

#### Property Value

Returns the default [Culture](ms-help://MS.NETFrameworkSDKv1.1/cpguidenf/html/cpconcultureinfo.htm) being used by the session.

Remarks

This is the CultureInfo that is used unless the [CurrentCulture](fcSDK~FChoice.Foundation.FCSession~CurrentCulture.md) property is set.

This value currently defaults to the [InstalledUICulture](ms-help://MS.NETFrameworkSDKv1.1/cpref/html/frlrfSystemGlobalizationCultureInfoClassInstalledUICultureTopic.htm).

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCSession Class](fcSDK~FChoice.Foundation.FCSession.md)  
[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)
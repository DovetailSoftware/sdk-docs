     Deinitialize Method (FCApplication)                                                   

fcSDK Documentation

Deinitialize Method (FCApplication)

Unloads the FCApplication singleton from the current AppDomain.

Syntax

```vbnet
```csharp

'Declaration
 

Public Shared Sub Deinitialize() 

public static void Deinitialize()

#### Return Value

FCApplication is a singleton. This method allows you to reset the singleton to an uninitialized state. After calling this method you will need to [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md) the FCApplication.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCApplication Class](fcSDK~FChoice.Foundation.FCApplication.md)  
[FCApplication Members](fcSDK~FChoice.Foundation.FCApplication_members.md)
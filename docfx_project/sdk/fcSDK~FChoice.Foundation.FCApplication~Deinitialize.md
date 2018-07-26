### Deinitialize Method (FCApplication)

Unloads the FCApplication singleton from the current AppDomain.

Syntax

```vbnet
'Declaration

Public Shared Sub Deinitialize() 
```

```csharp
public static void Deinitialize()
```

#### Return Value

FCApplication is a singleton. This method allows you to reset the singleton to an uninitialized state. After calling this method you will need to [Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md) the FCApplication.

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCApplication Class](fcSDK~FChoice.Foundation.FCApplication.md)  
[FCApplication Members](fcSDK~FChoice.Foundation.FCApplication_members.md)
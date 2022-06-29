### FCSession Class

**FCSession** contains session information for a logged-in user and allows for manipulation of data in the CRM system as that user.

#### Syntax

```vbnet
'Declaration

<DefaultMemberAttribute("Item")>
Public MustInherit Class FCSession
```

```csharp
[DefaultMemberAttribute("Item")]
public abstract class FCSession
```

#### Remarks

To create a session, see [FCApplication.CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md).

FCFL.NET sessions are stateful containers that are used to remember information about a user during their session using the system. They also provide access to manipulate data and settings in the CRM system.

#### Inheritance Hierarchy

System.Object
[FChoice.Foundation.FCSession**
[FChoice.Foundation.Clarify.ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md)

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)
**FChoice.Foundation.FCSession**
[FChoice.Foundation.Clarify.ClarifySession](fcSDK~FChoice.Foundation.Clarify.ClarifySession.md)

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[FCSession Members](fcSDK~FChoice.Foundation.FCSession_members.md)
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)

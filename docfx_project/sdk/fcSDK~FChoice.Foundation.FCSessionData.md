### FCSessionData Class

Repository for session data which is retained by the [FCApplication](fcSDK~FChoice.Foundation.FCApplication.md) between session uses.

#### Syntax

```vbnet
'Declaration

<SerializableAttribute()>
Public MustInherit Class FCSessionData 
```

```csharp
[SerializableAttribute()]
public abstract class FCSessionData 
```

#### Remarks

Users do not use this object directly but through the [FCSession](fcSDK~FChoice.Foundation.FCSession.md) the CRM specific implementation. Session lifetime is maintained by the [FCApplication](fcSDK~FChoice.Foundation.FCApplication.md).

All session related information is stored in the **FCSessionData** object for use across individual [FCSession](fcSDK~FChoice.Foundation.FCSession.md) uses.

#### Inheritance Hierarchy

System.Object  
   **FChoice.Foundation.FCSessionData**  
      [FChoice.Foundation.Clarify.ClarifySessionData](fcSDK~FChoice.Foundation.Clarify.ClarifySessionData.md)  

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)



#### Reference

[FCSessionData Members](fcSDK~FChoice.Foundation.FCSessionData_members.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)
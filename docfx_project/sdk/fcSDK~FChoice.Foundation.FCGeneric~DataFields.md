     DataFields Property (FCGeneric)                                                   

fcSDK Documentation

DataFields Property (FCGeneric)

Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked. If no fields are selected all fields are returned.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property DataFields As [DataFieldNameCollection](fcSDK~FChoice.Foundation.DataFieldNameCollection.md)

public [DataFieldNameCollection](fcSDK~FChoice.Foundation.DataFieldNameCollection.md) DataFields {get;}

#### Property Value

Collection of data fields that will be returned when [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) is invoked.

Remarks

To add a field to be selected during Query call the [Add](fcSDK~FChoice.Foundation.DataFieldNameCollection~Add.md) or [AddRange](fcSDK~FChoice.Foundation.DataFieldNameCollection~AddRange.md) methods.

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)
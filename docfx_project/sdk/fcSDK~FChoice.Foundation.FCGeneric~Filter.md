     Filter Property (FCGeneric)                                                   

fcSDK Documentation

Filter Property (FCGeneric)

This is the root filter used to constrain rows returned during [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operations. Initially there are no filters present with filters being added using the [AddFilter](fcSDK~FChoice.Foundation.Filters.LogicalFilter~AddFilter.md) method.

Syntax

```vbnet
```csharp

'Declaration
 

Public ReadOnly Property Filter As [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md)

public [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) Filter {get;}

Remarks

Since the root filter is an [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) all filters added to it will be seperated with ANDs.

Example

**Developer Walkthrough - Advanced Filtering**

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Security Best Practices](#)
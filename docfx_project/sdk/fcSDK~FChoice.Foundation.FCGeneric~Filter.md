### Filter Property (FCGeneric)

This is the root filter used to constrain rows returned during [Query](fcSDK~FChoice.Foundation.FCGeneric~Query.md) operations. Initially there are no filters present with filters being added using the [AddFilter](fcSDK~FChoice.Foundation.Filters.LogicalFilter~AddFilter.md) method.

Syntax

```vbnet
' Declaration
Public ReadOnly Property Filter As [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md)

public [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) Filter {get;}

Remarks

Since the root filter is an [AndFilter](fcSDK~FChoice.Foundation.Filters.AndFilter.md) all filters added to it will be seperated with ANDs.

Example

**Developer Walkthrough - Advanced Filtering**

[!include[Requirements](../partials/requirements.md)]



#### Reference

[FCGeneric Class](fcSDK~FChoice.Foundation.FCGeneric.md)  
[FCGeneric Members](fcSDK~FChoice.Foundation.FCGeneric_members.md)  
[Security Best Practices](#)
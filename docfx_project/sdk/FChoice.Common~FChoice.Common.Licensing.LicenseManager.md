### LicenseManager Class

Singleton providing access to the current collection of valid First Choice licenses

#### Syntax

```vbnet
'Declaration

Public NotInheritable Class LicenseManager 
```

```csharp
public sealed class LicenseManager 
```

#### Remarks

Please access the License Manager via the [Instance](FChoice.Common~FChoice.Common.Licensing.LicenseManager~Instance.md) property.

If multiple licenses for the same product are present the manager does its best to load the best license available (most available users, longest time until key is expired.)

If you install new licenses you will need to re-initialize your application to have the new licenses become available.

#### Inheritance Hierarchy

System.Object  
   **FChoice.Common.Licensing.LicenseManager**  

#### Requirements

**Namespace:** [FChoice.Common.Licensing](FChoice.Common~FChoice.Common.Licensing_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[LicenseManager Members](FChoice.Common~FChoice.Common.Licensing.LicenseManager_members.md)  
[FChoice.Common.Licensing Namespace](FChoice.Common~FChoice.Common.Licensing_namespace.md)
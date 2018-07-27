### FCLicenseException.LoadFailReasons Enumeration

LoadFailReasons is used by [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md) to provide a specific reason why license procurement failed for the product.

#### Syntax

```vbnet
'Declaration

Public Enum FCLicenseException.LoadFailReasons 
   Inherits System.Enum
```

```csharp
public enum FCLicenseException.LoadFailReasons : System.Enum 
```

Members

| Member | Description |
| --- | --- |
| **GeneralError** | An unknown error has occurred while retrieving |
| **InvalidGraceLimit** | The license requested is invalid because its grace period is not within an acceptable range. |
| **InvalidLicenseDate** | The license requested is invalid because its expiration date is not within an acceptable range. |
| **InvalidUserLimit** | The license requested is invalid because its user limit value is not within the acceptable range. |
| **MissingSiteId** | The license requested does not contain a valid site ID. |
| **MissingTables** | The license tables required by First Choice Licensing are not installed in the database. |

#### Remarks

If you encounter an [FCLicenseException](FChoice.Common~FChoice.Common.FCLicenseException.md) during operation of a First Choice product, please contact First Choice support immediately at [support@fchoice.com](mailto:support@fchoice.com).

#### Inheritance Hierarchy

System.Object  
   System.ValueType  
      System.Enum  
         **FChoice.Common.FCLicenseException.LoadFailReasons**  

#### Requirements

**Namespace:** [FChoice.Common](FChoice.Common~FChoice.Common_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** FChoice.Common (in C:\\dovetail\\dovetail-sdk\\build\\Release\\FChoice.Common.dll)

#### Reference

[FChoice.Common Namespace](FChoice.Common~FChoice.Common_namespace.md)
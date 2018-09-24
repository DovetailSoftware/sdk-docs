### ClarifyApplication Class

**ClarifyApplication** is the starting point for using **FCFL.NET** against a Clarify database system.

#### Syntax

```vbnet
'Declaration

Public Class ClarifyApplication
   Inherits FChoice.Foundation.FCApplication
   Implements IClarifyApplication
```

```csharp
public class ClarifyApplication : FChoice.Foundation.FCApplication, IClarifyApplication
```

#### Remarks

[Initialize](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~Initialize.md) connects **ClarifyApplication** to the Clarify database and loads the cache and data object hierarchy.

Once the application is initialized, you can access cache data like the [SchemaCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~SchemaCache.md), [ConfigItemCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ConfigItemCache.md), [LocaleCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~LocaleCache.md), [ListCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~ListCache.md), and [StringCache](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~StringCache.md), or you can create session using [CreateSession](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication~CreateSession.md) and access the managed data access functionality using [ClarifyGeneric](fcSDK~FChoice.Foundation.Clarify.ClarifyGeneric.md).

#### Inheritance Hierarchy

System.Object
[FChoice.Foundation.FCApplication](fcSDK~FChoice.Foundation.FCApplication.md)
**FChoice.Foundation.Clarify.ClarifyApplication**

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify](fcSDK~FChoice.Foundation.Clarify_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)
**FChoice.Foundation.Clarify.ClarifyApplication**

#### Requirements

**Namespace:** [FChoice.Foundation.Clarify](fcSDK~FChoice.Foundation.Clarify_namespace.md)

**Platforms:** Windows XP, Windows Server 2003 and 2008 family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[ClarifyApplication Members](fcSDK~FChoice.Foundation.Clarify.ClarifyApplication_members.md)
[FChoice.Foundation.Clarify Namespace](fcSDK~FChoice.Foundation.Clarify_namespace.md)

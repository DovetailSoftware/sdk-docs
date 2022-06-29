### CachesUpdatedEventHandler Delegate

#### Syntax

```vbnet
'Declaration

Public Delegate Sub CachesUpdatedEventHandler( _
   ByVal _cacheNames_() As String, _
   ByVal _cacheType_ As CacheType _
) 
```

```csharp
public delegate void CachesUpdatedEventHandler( 
   string[] _cacheNames_,
   CacheType _cacheType_
)
```

#### Parameters

_cacheNames_

_cacheType_

#### Requirements

**Namespace:** [FChoice.Foundation](fcSDK~FChoice.Foundation_namespace.md)

**Platforms:** Windows 2000, Windows XP, Windows Server family

**Assembly:** fcSDK (in C:\\dovetail\\dovetail-sdk\\build\\Release\\fcSDK.dll)

#### Reference

[CachesUpdatedEventHandler Members](fcSDK~FChoice.Foundation.CachesUpdatedEventHandler.md)  
[FChoice.Foundation Namespace](fcSDK~FChoice.Foundation_namespace.md)
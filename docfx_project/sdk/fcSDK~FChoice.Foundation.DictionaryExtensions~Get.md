     Get<T,V> Method                                                   

fcSDK Documentation

Get<T,V> Method

Syntax

```vbnet
```csharp

'Declaration
 

<[ExtensionAttribute](#)()>
Public Shared Function Get
    (Of T,V)( _
   ByVal _dictionary_ As [IDictionary(Of T,V)](#), _
   ByVal _key_ As T _
) As V

\[[ExtensionAttribute](#)()\]
public static V Get<T,V>( 
   [IDictionary<T,V>](#) _dictionary_,
   T _key_
)

#### Parameters

_dictionary_

_key_

#### Type Parameters

_T_

_V_

#### Requirements

**Platforms:** Windows 98, Windows NT 4.0, Windows Millennium Edition, Windows 2000, Windows XP Home Edition, Windows XP Professional, Windows Server 2003 family

See Also

#### Reference

[DictionaryExtensions Class](fcSDK~FChoice.Foundation.DictionaryExtensions.md)  
[DictionaryExtensions Members](fcSDK~FChoice.Foundation.DictionaryExtensions_members.md)
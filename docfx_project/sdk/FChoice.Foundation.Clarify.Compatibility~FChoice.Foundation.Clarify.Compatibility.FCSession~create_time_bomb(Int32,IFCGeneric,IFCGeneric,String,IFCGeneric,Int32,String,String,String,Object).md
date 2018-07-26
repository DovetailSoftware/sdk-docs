### create_time_bomb(Int32,IFCGeneric,IFCGeneric,String,IFCGeneric,Int32,String,String,String,Object) Method

Syntax

```vbnet
'Declaration

<ComVisibleAttribute(False)>
Public Overloads Sub create_time_bomb( _
   ByVal _timeBombFlag_ As Integer, _
   ByRef _timeBombRecord_ As IFCGeneric, _
   ByVal _mainRecord_ As IFCGeneric, _
   ByVal _t_save_ As String, _
   ByVal _activityRecord_ As IFCGeneric, _
   ByVal _emp_rec_ As Integer, _
   ByVal _t_date_ As String, _
   ByVal _focus_obj_ As String, _
   ByVal _escalate_time_ As String, _
   Optional ByVal _new_generic_ As Object _
) 
```

```csharp
[ComVisibleAttribute(false)]
public void create_time_bomb( 
   int _timeBombFlag_,
   ref IFCGeneric _timeBombRecord_,
   IFCGeneric _mainRecord_,
   string _t_save_,
   IFCGeneric _activityRecord_,
   int _emp_rec_,
   string _t_date_,
   string _focus_obj_,
   string _escalate_time_,
   object _new_generic_
)
```

#### Parameters

_timeBombFlag_

_timeBombRecord_

_mainRecord_

_t_save_

_activityRecord_

_emp_rec_

_t_date_

_focus_obj_

_escalate_time_

_new_generic_

[!include[Requirements](../partials/requirements.md)]

#### Reference

[FCSession Class](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession.md)  
[FCSession Members](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession_members.md)  
[Overload List](FChoice.Foundation.Clarify.Compatibility~FChoice.Foundation.Clarify.Compatibility.FCSession~create_time_bomb.md)
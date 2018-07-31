create_state
------------

Public Function create_state(ByVal state As String, _
                             ByVal full_name As String, _
                             ByVal is_default As Boolean, _
                             ByVal country As String) As Integer

**Description**

This API creates a state/prov object in Clarify database, and relates it to an existing country. In addition, the state can be set to be the default state for the country, or not. If it is to be the default state, the previous default state is set to be a normal state.

#### Parameters
**Parameter Name**                **Required?**             **Description**

state                                       Yes                         State name

full_name                               No                           Full name of the state

is_default                              Yes                         Is this the default state for the country?

country                                  Yes                         The country to link the state to

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             No state name supplied

-2                                             Cannot find the specified country name

-3                                             The supplied state is already defined for the country

ret_objid                                Output                   Returns the objid of the new state

**Examples**

 Add a new state of "Confusion" for the USA. Do not make it the default.

**Visual Basic:**

Dim ret_int     As Integer

Dim state_objid As Long

ret_int = fcinter.create_state("Confusion", _
                               "The state of confusion", false, "USA")

 If ret_int = 0 Then

      state_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_state("Confusion", "The state of confusion",

                                   false, "USA");

 if (ret_int == 0){ var state_objid = fcinter.ret_objid; }

 Add the same state, but make it the default state for the USA.

**Visual Basic:**

Dim ret_int     As Integer

Dim state_objid As Long

ret_int = fcinter.create_state("Confusion", _
                               "The state of confusion", true, "USA")

 If ret_int = 0 Then

      state_objid = fcinter.ret_objid

   End If

**Javascript:**

var ret_int = fcinter.create_state("Confusion", "The state of confusion",

                                   true, "USA");

 if (ret_int == 0){ var state_objid = fcinter.ret_objid; }
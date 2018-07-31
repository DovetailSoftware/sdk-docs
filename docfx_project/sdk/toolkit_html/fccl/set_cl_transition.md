set_cl_transition
-------------------

Public Function set_cl_transition(request_type As String, start_cond As String, _
                                  end_cond As String, privclasses As String) As Long

**Description**

This API allows you to create or modify Logistics Transitions in the database. You must specify all of the arguments. If a transition does not yet exist for the conditions and request type, a new transition is created. Otherwise, the existing transition is modified.

#### Parameters
**Parameter Name**                **Required?**             **Description**

request_type                        Yes                         Part request request type

start_cond                             Yes                         Starting condition for the transition

end_cond                              Yes                         Ending condition for the transition

privclasses                            Yes                         Comma-separated list of privclasses that can make this transition. If you set this

string to "ALLCLASSES", all privclasses can make the transition. If you set this

string to "NOCLASSES", no privclasses can make this transition

**Returns**

**Value**                **Meaning**

 0                                             No errors

-1                                             Cannot find the specified request type

-2                                             The specified start condition is not valid

-3                                             The specified end condition is not valid

-4                                             Too many transitions are already defined. Cannot add a new transition

**Examples**

 Add a transition from RQST Open to Fulfilled for "Advance Exchange" type. The transition is for privclasses "CSR" and "System Administrator".

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.set_cl_transition("Advance Exchange", "RQST Open", "Fulfilled", _
                                 "CSR, System Administrator")

**Javascript:**

var ret_int = fccl.set_cl_transition("Advance Exchange", "RQST Open", "Fulfilled",

                                 "CSR, System Administrator");

 Set transitions for every privclass for the above transition

**Visual Basic:**

Dim ret_int As Integer

ret_int = fccl.set_cl_transition("Advance Exchange", "RQST Open", "Fulfilled", _
                                 "ALLCLASSES")

**Javascript:**

var ret_int = fccl.set_cl_transition("Advance Exchange", "RQST Open", "Fulfilled",

                                 "ALLCLASSES");
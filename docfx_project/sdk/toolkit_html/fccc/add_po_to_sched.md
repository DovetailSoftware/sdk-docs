  

add_po_to_sched
-----------------

Public Function add_po_to_sched(ByVal contract_id As String, _

                                ByVal sched_id As String, _

                                ByVal po_num As String, _

                                ByVal pay_option As String, _

                                ByVal pay_terms As String, _

                                ByVal po_amt As String, _

                                ByVal po_date As String, _

                                ByVal expire_date As String, _

                                ByVal po_status As String) As Integer

**Description**

This API is used to add purchase orders to schedules of contracts. A valid schedule for a contract must be specified. Also, the PO number cannot be defined already for the schedule. A variety of other payment items can be specified, as well as the PO date, and the expiration date.

#### Parameters
**Parameter Name**                **Required?**             **Description**

contract_id                            Yes                         ID number of the contract/quote

sched_id                                                Yes                         ID of the schedule for the specified contract

po_num                                 Yes                         The purchase order number for the schedule

pay_option                           No                           Payment option. If blank, the default value of the

PAY_METHOD list is used

pay_terms                             No                           Payment terms. If blank, the default value of the

CONTRACT_PAY_TERMS  list is used

po_amt                                   Yes                         Purchase order amount. Must be numeric

po_date                                 No                           Purchase order date. If blank, current date/time is used

expire_date                            No                           Purchase order expiration date. If blank, current date/time is used.

po_status                              No                           Purchase order status. If blank, the default status from "PO

Status" for Closed Contract condition will be used.

**Returns**

**Value**                **Meaning**

0 No errors

-1                                             Purchase order amount is not numeric

-2                                             Contract specified could not be found

-3                                             The specified schedule for the contract could not be found

-4                                             The specified purchase order number is already defined for this schedule

-5                                             The specified payment method is not found

-6                                             The specified payment terms cannot be found

-7                                             The specified payment status is not found

ret_id_num                            Output                   Returns the header id of the newly created purchase order

ret_objid                                Output                   Returns the objid of the newly purchase order

**Example**

 Add purchase order '123' to contract '22' and schedule 'Default Schedule'. The amount is $155.55, and set the terms, method, and status. Set dates as well.

**JavaScript:**

   var ret_int = fc_cc.add_po_to_sched("22", "Default Schedule", "123", _

                                   "Check",  "Net 10", "155.55", _

                                   "01/01/2001", "11/01/2002", "Issued")

**      Visual Basic:**

   Dim ret_int    As Integer

   Dim po_num     As String

   Dim po_objid   As Long

   ret_int = fc_cc.add_po_to_sched("22", "Default Schedule", "123", _

                                   "Check",  "Net 10", "155.55", _

                                   "01/01/2001", "11/01/2002", "Issued")

   If ret_int = 0 Then

     po_num = fc_cc.ret_id_num

     po_objid = fc_cc.ret_objid

   End If
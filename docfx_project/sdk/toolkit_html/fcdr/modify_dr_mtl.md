  

**modify_dr_mtl**

Public Function modify_dr_mtl(ByVal mtl_log_objid As Long, _

                         ByVal repair_code As String, _

                         ByVal failure_code As String, _

                         ByVal mod_level As Long, _

                         ByVal billable As Integer, _

                         ByVal bill_to As String, _

                         ByVal wrk_center As String, _

                         ByVal disposition As Integer, _

                         ByVal ref_designator As String, _

                         ByVal notes As String, _

                         ByVal transaction_id As String, _

                         ByVal perf_by As String, _

                         ByVal creation_time As String) As Integer

**Description**

Theis API allows modification of material that is logged against a depot repair part.

#### Parameters
**Parameter Name**                **Required?**             **Description**

mtl_log_objid                       Yes                         Object ID of specified mtl log.

repair_code                           No                           Repair type for this usage of material.

failure_code                          No                           Failure code for the part being serviced.

mod_level                              No                           Part and revision of the material that was put in use.

billable                                   No                           Indicates whether material usage is billable.

bill_to                                     No                           Indicates who is billed for the material.

wrk_center                            No                           Indicates the location where material was used.

disposition                            Yes                         Indicates how the material relates to the depot repair part.

ref_designator                      No                           Describes a reference location or designation for the part.

notes                                      No                           Description area for the material usage activity.

transaction_id                      No                           Indicates the id of the GL transaction associated with this material usage.

perf_by                                  No                           Indicates the technician who performed the labor.

creation_time                        No                           Indicates the time this action is logged. Will default to the current time if a

different time is not supplied.

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Specified Repair Code is not in database                      

-2                                             Specified Bill To Material is not in database                  

-3                                             Specified Work Center is not in database                        

-4                                             Specified Material Log record is not in database               

-5                                             Related Onsite Log record is not in database                   

-6                                             Related Demand Detail record is not in database                

-7                                             Specified User is not in database                              

-8                                             nable to find Standard Cost for part revision

**Examples  **

 Change material applied in mtl_log 268435465. The job was done by user "db" in the Lab, billable to the customer. No other changes are being made at this time.

**JavaScript:**

var material_log_objid = 268435465;

var repair_code = "";

var failure_code = "";

var mod_level = 0;

var bill_to = "Customer";

var wrk_center = "Lab";

var disposition = "";

var ref_designator = "";

var notes = "";

var transaction_id = "";

var creation_time = "";

var perf_by = "db";

var billable = 1;

   var retval = FCDR.modify_dr_mtl(material_log_objid, repair_code, failure_code,

 mod_level, billable, bill_to, wrk_center,

 disposition, ref_designator, notes, transaction_id,

 perf_by, creation_time);
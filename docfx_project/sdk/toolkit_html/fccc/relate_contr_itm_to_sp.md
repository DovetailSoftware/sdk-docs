relate_contr_itm_to_sp
--------------------------

Public Function relate_contr_itm_to_sp(ByVal contr_objid As Long, _

                ByVal part_num As String, ByVal domain As String, _

                ByVal rev As String, ByVal serial_num As String) As Integer

**Description**

This API is used to relate (or unrelate) a site_part from a contract line item. The line item's objid is specified, along with the details for locating the site_part. To unrelate the contract item from a site_part, use the phrase "UNRELATE" in the serial_num field.

#### Parameters
**Parameter Name**                **Required?**             **Description**

contr_objid                           Yes                         Objid of the contract line item

part_num                               No                           Part number of site_part to relate

domain                                   No                           Domain of site_part to relate

rev                                          No                           Part revision of site_part to relate

serial_num                             Yes                         Serial number of site_part to relate. To unrelate, use UNRELATE

**Returns**

**Value**                **Meaning**

0                                              No errors

-1                                             Could not find the specified contract line item

-2                                             No Site Parts Related to Specified Contract Item

-3                                             Could not find the specified site_part

**Examples  **

 Relate a contract line item with 'MS Word version 6.0', serial number 'ABC'.

**Field version:**

**JavaScript:**

    Var ret_int = fc_cc.relate_contr_itm_to_sp(268435457, "MS Word", "Product", _

                                        "6.0", "ABC")

**Visual Basic:**

   Dim ret_int As Integer

   ret_int = fc_cc.relate_contr_itm_to_sp(268435457, "MS Word", "Product", _

                                         "6.0", "ABC")

 Unrelate that same contract line item.

**JavaScript:**

   var ret_int = fc_cc.relate_contr_itm_to_sp(268435457, "", "", "", "UNRELATE")

**Visual Basic:**

   Dim ret_int As Integer

   ret_int = fc_cc.relate_contr_itm_to_sp(268435457, "", "", "", "UNRELATE")
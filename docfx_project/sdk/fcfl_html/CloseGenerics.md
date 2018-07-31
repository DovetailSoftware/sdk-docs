_CloseGenerics_
---------------

**Object and Type**

Object  : FCSession

Type     : Method

**Prototype**

Public Sub CloseGenerics(ByVal NumGenerics As Integer, _

                         ByRef Generic1 As FCGeneric, _

                         Optional ByRef Generic2 As FCGeneric, _

                         Optional ByRef Generic3 As FCGeneric, _

                         Optional ByRef Generic4 As FCGeneric, _

                         Optional ByRef Generic5 As FCGeneric, _

                         Optional ByRef Generic6 As FCGeneric, _

                         Optional ByRef Generic7 As FCGeneric, _

                         Optional ByRef Generic8 As FCGeneric, _

                         Optional ByRef Generic9 As FCGeneric, _

                         Optional ByRef Generic10 As FCGeneric)

**Description**

This method closes and  frees all resources and references for up to 10 FCGeneric objects.

This method will check to see if the object has been created. If it hasn't, it ignores it. This allows you to use a standard cleanup procedure to close all of your Fcgeneric objects, even if they haven't yet been created using the CreateGeneric method.

**Note**: This method should be used in Visual Basic **ONLY**. Since VBScript and JavaScript do not support ByRef arguments, this method will not work in those environments.

#### Parameters
**Parameter Name**                **Required?**             **Description**

NumGenerics                        Yes                         The number of FCFeneric objects to be closed

Generic1                 Yes                         The name of the FCGeneric Object to be closed

Generic2                 No                           The name of the FCGeneric Object to be closed

Generic3                 No                           The name of the FCGeneric Object to be closed

Generic4                 No                           The name of the FCGeneric Object to be closed

Generic5                 No                           The name of the FCGeneric Object to be closed

Generic6                 No                           The name of the FCGeneric Object to be closed

Generic7                 No                           The name of the FCGeneric Object to be closed

Generic8                 No                           The name of the FCGeneric Object to be closed

Generic9                 No                           The name of the FCGeneric Object to be closed

Generic10                               No                           The name of the FCGeneric Object to be closed

**Example**

The following example closes 3 FCGeneric Objects

**JavaScript:**

The code in this example is written in JavaScript for inclusion in ASP pages.

FCSession.CloseGenerics(3,boCase,boContact,boSite);

The following example closes 10 FCGeneric Objects before exiting a function.

**Visual Basic:**

The code in this example is written in Visual Basic.

If Not FCApp.RankIsInGbstLst("Activity Name", stat_code) Then

  'Cleanup, Error, & Exit

    CloseGenerics 10, obj_rec, old_stat_rec, user_rec, emp_rec, _

 parent_rec, stat_lst_rec, cond_rec, tb_rec, _

 act_rec, stat_rec

    Err.Raise -5, ObjectName, _

         "Cannot find the activity string with rank = " & stat_code

    Exit Function

  End If
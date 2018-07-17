### NoSorting

**Object and Type**

Object  : FCBulk

Type     : Property (Read-only)

**Prototype**

Public NoSorting As Boolean

**Description**

This property controls how a Bulk object orders and stores the generics it contains. Under normal circumstances (when this property is set to _False_, which it is by default), the generics in a Bulk are ordered as follows:

1. All condition generics are stored first

2. Other generics are ordered after the condition generics, ordered by the table or view number of the generic,

3. If more than one generic is in a Bulk from the same table or view, the generics are ordered in the order they were added to the bulk.

The reason for this ordering is to maintain compatibility with Clarify, and minimize database deadlock issues.

Some users may wish to circumvent this ordering, however. Setting this property for a Bulk causes the generics to be saved in the bulk in the same order they are added to the bulk. This may be desired in some instances, but should be used only when you need that specific result.

**In general, most users should never change the default value of this property!!!**

It is important to understand that changing this property does not cause a re-order of generics already in the Bulk. It is only good for future generics added to the Bulk. Thus it is crucial that this property be set after the first generic is added to the Bulk.

**Example**

The following example adds many generic objects to a Bulk, but does not order them using the standard ordering algorithm. Rather, the objects are saved in the Bulk in the order they are inserted in the Bulk.

**Visual Basic:**

The code in this example is written in Visual Basic.

Dim boSite As FCGeneric

Dim boCRole As FCGeneric

Dim boContact As FCGeneric

Dim boCond As FCGeneric

Dim boCase As FCGeneric

         ' Create a site generic object

         ' Put it in a bulk

         ' Order the bulk in insertion order (no sorting)

Set boSite = fc_session.CreateGeneric("site")

boSite.BulkName = "my_bulk"

boSite.Bulk.NoSorting = true

         ' Create a contact role generic object

Set boCRole = fc_session.CreateGeneric("contact_role")

boCRole.BulkName = "my_bulk "

         ' Create a contact generic object

Set boContact = fc_session.CreateGeneric("contact")

boContact.BulkName = "my_bulk "

         ' Create a condition generic object

Set boCond = fc_session.CreateGeneric("condition")

boCond.BulkName = "my_bulk "

         ' Create a case generic object

Set boCase = fc_session.CreateGeneric("case")

boCase.BulkName = "my_bulk "
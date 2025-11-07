@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '4.  Define Root Entity'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUSTOMER_ROOT_mb
  as select from /dmo/customer
  composition [0..*] of ZCDS_CUST_BOOK_mb as _Booking
{
  key customer_id as CustomerId,
      first_name  as FirstName,
      last_name   as LastName,
      city        as City,
      _Booking
}

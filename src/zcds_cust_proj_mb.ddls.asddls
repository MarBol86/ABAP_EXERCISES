@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '7. Proyección - Transaccional'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZCDS_CUST_PROJ_MB
  provider contract transactional_interface
  as projection on ZCDS_CUSTOMER_ROOT_mb

{
  key CustomerId,
      FirstName,
      LastName,
      City,
      /* Associations */
      _Booking : redirected to composition child ZCDS_CHILD_PROJ_mb
}

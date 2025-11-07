@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Proyección - Child'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZCDS_CHILD_PROJ_mb
  as projection on ZCDS_CUST_BOOK_mb
{
  key CustomerId,
  key TravelId,
  key BookingId,
      /* Associations */
      _Customer : redirected to parent ZCDS_CUST_PROJ_MB
}

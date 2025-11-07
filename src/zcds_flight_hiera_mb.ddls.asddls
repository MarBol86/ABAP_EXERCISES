@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_ALLOWED
@EndUserText.label: '3. Modelo Jerárquico'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_FLIGHT_HIERA_MB
  as select from /dmo/travel
  association [1..1] to ZCDS_FLIGHT_HIERA_MB as _Agency on _Agency.AgencyId = $projection.CustomerId
{
  key travel_id   as TravelId,
      agency_id   as AgencyId,
      customer_id as CustomerId,
      _Agency
}

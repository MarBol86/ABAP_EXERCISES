@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '3. Publicación de Asociaciones'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_PUBLIC_ASSOC_MB
  as select from /dmo/travel as Travel
  association [1..1] to ZCDS_AGENCY_MAX_MB as _Agency on _Agency.AgencyId = $projection.AgencyId

{
  key Travel.travel_id as TravelId,
      Travel.agency_id as AgencyId,
      _Agency
}

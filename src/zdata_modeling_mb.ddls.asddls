@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '1. Definición de Vistas CDS Básicas'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_MODELING_mb
  as select from /dmo/customer
{
  key customer_id                     as CustomerId,
      first_name                      as FirstName,
      last_name                       as LastName,
      $session.system_date            as SystemDate,
      $session.client                 as MandtClient,
      cast(customer_id as abap.int8 ) as CUSTOMER_ID_USER,
      case country_code
      when 'US' then 'United States'
      when 'DE' then 'Germany'
      else 'Other Country'
      end                             as COUNTRY
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '5. Agregación de Datos'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZDATA_AGGREGATION_MB
  as select from /dmo/booking
{
  //  customer_id       as CustomerId,
  @Semantics.amount.currencyCode: 'CurrencyCode'
  sum(flight_price) as FlightPriceSum,
  currency_code     as CurrencyCode
}
group by
//  customer_id,
  currency_code

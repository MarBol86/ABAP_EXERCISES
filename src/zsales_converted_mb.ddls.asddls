@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '6. Conversión de Moneda'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZSALES_CONVERTED_mb
  as select from /dmo/booking
{
  key travel_id                                                  as TravelId,
  key booking_id                                                 as BookingId,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      flight_price                                               as FlightPrice,
      currency_code                                              as CurrencyCode,
      @Semantics.amount.currencyCode: 'CurrencyCodeConv'
      currency_conversion( amount             => flight_price,
                           source_currency    => currency_code,
                           target_currency    => cast('USD' as abap.cuky( 5 )),
                           exchange_rate_date => booking_date,
                           error_handling     => 'SET_TO_NULL' ) as ConvertedPrice,
      cast( 'USD' as abap.cuky )                                 as CurrencyCodeConv
}

@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '1. Joins'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZCDS_JOIN__mb
  as select from /dmo/booking as Booking
    inner join   /dmo/flight  as Flight on  Flight.carrier_id    = Booking.carrier_id
                                        and Flight.connection_id = Booking.connection_id
                                        and Flight.flight_date   = Booking.flight_date
{
  key Booking.booking_id   as BookingId,
  key Flight.flight_date   as FlightDate,
      @Semantics.amount.currencyCode: 'CurrencyCode'
      Flight.price         as Price,
      Flight.currency_code as CurrencyCode
}

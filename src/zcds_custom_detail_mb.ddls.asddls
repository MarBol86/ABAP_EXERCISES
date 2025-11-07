@EndUserText.label: '1. Entidad personalizada - Custom Entity'
@ObjectModel.query.implementedBy: 'ABAP:ZCL_CUSTOM_DETAIL_MB'
define custom entity ZCDS_CUSTOM_DETAIL_MB
{
  key customer_id   : /dmo/customer_id;
      phone_number  : /dmo/phone_number;
      email_address : /dmo/email_address;

}

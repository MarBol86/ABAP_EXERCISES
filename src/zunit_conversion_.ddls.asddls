@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: '7. Conversión de Unidad'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
define view entity ZUNIT_CONVERSION_
  as select from /dmo/fsa_root_a
{
  key id                                                 as Id,
      string_property                                    as StringProperty,
      uom                                                as Uom,
      @Semantics.quantity.unitOfMeasure: 'Uom'
      field_with_quantity                                as FieldWithQuantity,
      @Semantics.quantity.unitOfMeasure: 'ConvertedUnit'
      unit_conversion( quantity => field_with_quantity,
                       source_unit => uom,
                       target_unit => abap.unit'W' ,
                       error_handling => 'SET_TO_NULL' ) as ConvertedQuantity,
      abap.unit'W'                                       as ConvertedUnit

}
where
  uom = 'A'

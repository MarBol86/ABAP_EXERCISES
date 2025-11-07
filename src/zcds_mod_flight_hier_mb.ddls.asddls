define hierarchy ZCDS_MOD_FLIGHT_HIER_mb
  as parent child hierarchy(
    source ZCDS_FLIGHT_HIERA_MB
    child to parent association _Agency
    start where
      AgencyId is initial
    siblings order by
      AgencyId
    multiple parents allowed
    orphans ignore
    cycles breakup cache on

  )
{
  AgencyId,
  CustomerId,
  $node.parent_id             as ParentId,
  $node.node_id               as NodeId,
  $node.hierarchy_is_cycle    as HIsCicle,
  $node.hierarchy_is_orphan   as HIsOrphan,
  $node.hierarchy_level       as HLevel,
  $node.hierarchy_parent_rank as HParentRank,
  $node.hierarchy_rank        as HRank,
  $node.hierarchy_tree_size   as HTreeSize
}



{if $module_result.node_id}
{def $canonical_node=fetch( 'content', 'node', hash( 'node_id', $module_result.node_id ) )}

{if $canonical_node.node_id|ne($canonical_node.object.main_node_id)}
<!-- Multiple locations, pointing Search Engines to the original -->
<link rel="canonical" href={$canonical_node.object.main_node.url_alias|ezurl(,'full')} />
{/if}
{/if}



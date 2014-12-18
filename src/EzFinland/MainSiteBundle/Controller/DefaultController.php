<?php

namespace EzFinland\MainSiteBundle\Controller;

use Symfony\Component\HttpFoundation\Response;
use eZ\Bundle\EzPublishCoreBundle\Controller;
use eZ\Publish\API\Repository\Values\Content\LocationQuery;
use eZ\Publish\API\Repository\Values\Content\Query;
use eZ\Publish\API\Repository\Values\Content\Query\SortClause;
use eZ\Publish\API\Repository\Values\Content\Query\Criterion;

class DefaultController extends Controller
{

    public function blogPostListingAction()
    {
        
        $response = new Response();
        $response->setPublic();
        $response->setSharedMaxAge( 3600 );

        $rootLocationId = $this->getConfigResolver()->getParameter( 'content.tree_root.location_id' );

        $repository = $this->container->get( 'ezpublish.api.repository' );
        $rootLocation = $repository->getLocationService()->loadLocation($rootLocationId);

        $criteria = array(
            new Criterion\Subtree($rootLocation->pathString),
            new Criterion\Visibility( Criterion\Visibility::VISIBLE ),
            new Criterion\ContentTypeIdentifier( 'blog_post' )
        );

        if ( !empty( $criterion ) )
            $criteria[] = $criterion;

        $query = new LocationQuery(
            array(
                'criterion' => new Criterion\LogicalAnd( $criteria )
            )
        );

        $query->limit = 100;
        $searchService = $repository->getSearchService();
        $searchResults = $searchService->findLocations($query);

        return $this->render(
            "EzFinlandMainSiteBundle:parts:blog_listing.html.twig",
            array(
            	'searchHits' => $searchResults->searchHits,
            ),
            $response
        );
    }

}


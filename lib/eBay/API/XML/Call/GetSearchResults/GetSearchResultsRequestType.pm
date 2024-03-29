#!/usr/bin/perl

package eBay::API::XML::Call::GetSearchResults::GetSearchResultsRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSearchResultsRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSearchResults::GetSearchResultsRequestType

=head1 DESCRIPTION

Retrieves item listings based on keywords you specify. The keywords can
include wildcards.
<br>
<br>
It is recommended that you consider using FindItemsAdvanced
(in the Shopping API) instead of GetSearchResults because
FindItemsAdvanced is easier to use and faster.
See <a href="http://developer.ebay.com/products/shopping/" target="_blank">Shopping API</a>
for more information.
<br>
<br>
The response is in the form of an array whose size and
contents you specify, using a variety of input fields. You can filter the item
listings returned using such criteria as the listing category, location,
whether the item is listed in an ebay Store, and listing type. You can include
or exclude specified sellers.
<br>
<br>
The call returns those item listings where the keywords appear in the
title, subtitle, and (optionally) the description. Some input fields (e.g.,
Query) are primary search criteria that let you specify data to match in
listings. For example, you can search for all listings that include the
word "Toy" in the title.
<br>
<br>
Some fields (e.g., ItemTypeFilter) are
secondary search criteria that let you further refine data to match in
listings. For example, you can search for all toys that are listed as
auctions. In general, the effect of secondary search fields is
cumulative (using "AND" logic) unless otherwise specified. Some fields
(e.g., TotalOnly) control what is actually returned in the result set.
For example, you can search for all toys that are listed as Chinese
auctions, but just retrieve the total count (not the listings
themselves).
<br>
<br>
Some fields (e.g., IncludeCondition) affect the data to
retrieve for each listing in the result set. For example, for each toy
returned in the result, you can also choose to see the toy's new or used
condition.
<br>
<br>
Some fields (e.g., Order) control the way the listings are
organized in the response. For example, you can retrieve all the toy
listings in chronological order, with the newest one first. Use the
DetailLevel ItemReturnCategories to return the primary category and, if
applicable, the secondary category.
<br>
<br>
Use a DetailLevel value of ItemReturnAttributes (or ReturnAll) to return summary Item Specifics
(only returned for categories that support summary Item Specifics in
search results).
<br><br>Not applicable to eBay Express or Half.com.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSearchResults::GetSearchResultsRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AffiliateTrackingDetailsType;
use eBay::API::XML::DataType::BidRangeType;
use eBay::API::XML::DataType::ExternalProductIDType;
use eBay::API::XML::DataType::GroupType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::PriceRangeFilterType;
use eBay::API::XML::DataType::ProximitySearchType;
use eBay::API::XML::DataType::RequestCategoriesType;
use eBay::API::XML::DataType::SearchLocationFilterType;
use eBay::API::XML::DataType::SearchRequestType;
use eBay::API::XML::DataType::SearchStoreFilterType;
use eBay::API::XML::DataType::TicketDetailsType;
use eBay::API::XML::DataType::UserIdFilterType;
use eBay::API::XML::DataType::Enum::GranularityLevelCodeType;
use eBay::API::XML::DataType::Enum::ItemConditionCodeType;
use eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType;
use eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType;
use eBay::API::XML::DataType::Enum::QuantityOperatorCodeType;
use eBay::API::XML::DataType::Enum::SearchFlagsCodeType;
use eBay::API::XML::DataType::Enum::SearchSortOrderCodeType;
use eBay::API::XML::DataType::Enum::SearchTypeCodeType;
use eBay::API::XML::DataType::Enum::SellerBusinessCodeType;


my @gaProperties = ( [ 'AdFormat', 'xs:boolean', '', '', '' ]
	, [ 'AffiliateTrackingDetails', 'ns:AffiliateTrackingDetailsType', ''
	     ,'eBay::API::XML::DataType::AffiliateTrackingDetailsType', '1' ]
	, [ 'BidRange', 'ns:BidRangeType', ''
	     ,'eBay::API::XML::DataType::BidRangeType', '1' ]
	, [ 'Categories', 'ns:RequestCategoriesType', ''
	     ,'eBay::API::XML::DataType::RequestCategoriesType', '1' ]
	, [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'CharityID', 'xs:int', '', '', '' ]
	, [ 'EndTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'EndTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'ExpandSearch', 'xs:boolean', '', '', '' ]
	, [ 'ExternalProductID', 'ns:ExternalProductIDType', ''
	     ,'eBay::API::XML::DataType::ExternalProductIDType', '1' ]
	, [ 'FreeShipping', 'xs:boolean', '', '', '' ]
	, [ 'GranularityLevel', 'ns:GranularityLevelCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::GranularityLevelCodeType', '' ]
	, [ 'Group', 'ns:GroupType', ''
	     ,'eBay::API::XML::DataType::GroupType', '1' ]
	, [ 'IncludeCondition', 'xs:boolean', '', '', '' ]
	, [ 'IncludeFeedback', 'xs:boolean', '', '', '' ]
	, [ 'IncludeGetItFastItems', 'xs:boolean', '', '', '' ]
	, [ 'ItemCondition', 'ns:ItemConditionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemConditionCodeType', '' ]
	, [ 'ItemTypeFilter', 'ns:ItemTypeFilterCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ItemTypeFilterCodeType', '' ]
	, [ 'LocalSearchPostalCode', 'xs:string', '', '', '' ]
	, [ 'Lot', 'xs:boolean', '', '', '' ]
	, [ 'MaxRelatedSearchKeywords', 'xs:int', '', '', '' ]
	, [ 'ModTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'MotorsGermanySearchable', 'xs:boolean', '', '', '' ]
	, [ 'Order', 'ns:SearchSortOrderCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SearchSortOrderCodeType', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
	, [ 'PaymentMethod', 'ns:PaymentMethodSearchCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::PaymentMethodSearchCodeType', '' ]
	, [ 'PriceRangeFilter', 'ns:PriceRangeFilterType', ''
	     ,'eBay::API::XML::DataType::PriceRangeFilterType', '1' ]
	, [ 'ProductID', 'xs:string', '', '', '' ]
	, [ 'ProximitySearch', 'ns:ProximitySearchType', ''
	     ,'eBay::API::XML::DataType::ProximitySearchType', '1' ]
	, [ 'Quantity', 'xs:int', '', '', '' ]
	, [ 'QuantityOperator', 'ns:QuantityOperatorCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::QuantityOperatorCodeType', '' ]
	, [ 'Query', 'xs:string', '', '', '' ]
	, [ 'SearchFlags', 'ns:SearchFlagsCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::SearchFlagsCodeType', '' ]
	, [ 'SearchLocationFilter', 'ns:SearchLocationFilterType', ''
	     ,'eBay::API::XML::DataType::SearchLocationFilterType', '1' ]
	, [ 'SearchRequest', 'ns:SearchRequestType', ''
	     ,'eBay::API::XML::DataType::SearchRequestType', '1' ]
	, [ 'SearchType', 'ns:SearchTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SearchTypeCodeType', '' ]
	, [ 'SellerBusinessType', 'ns:SellerBusinessCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::SellerBusinessCodeType', '' ]
	, [ 'StoreSearchFilter', 'ns:SearchStoreFilterType', ''
	     ,'eBay::API::XML::DataType::SearchStoreFilterType', '1' ]
	, [ 'TicketFinder', 'ns:TicketDetailsType', ''
	     ,'eBay::API::XML::DataType::TicketDetailsType', '1' ]
	, [ 'TotalOnly', 'xs:boolean', '', '', '' ]
	, [ 'UserIdFilter', 'ns:UserIdFilterType', ''
	     ,'eBay::API::XML::DataType::UserIdFilterType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setAdFormat()

Restricts listings to return only items that have the Ad Format feature.
If true, the values of ItemTypeFilter and
StoreSearchFilter are ignored (if they are specified). That is, "AND"
logic is not applied.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setAdFormat {
  my $self = shift;
  $self->{'AdFormat'} = shift
}

=head2 isAdFormat()

#    Returns: 'xs:boolean'

=cut

sub isAdFormat {
  my $self = shift;
  return $self->{'AdFormat'};
}


=head2 setAffiliateTrackingDetails()

Container for affiliate tags.
If you use affiliate tags, it is possible to get affiliate commissions
based on calls made by your application.
(See the <a href="https://www.ebaypartnernetwork.com/" target="_blank">eBay Partner Network</a>
for information about commissions.)
Affiliate tags enable the tracking of user activity.
You can use child tags of AffiliateTrackingDetails if you want
call output to include a string that includes
affiliate tracking information.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=AffiliateTrackingConcepts
Title: Affiliate Tracking Concepts

  RequiredInput: No
#    Argument: 'ns:AffiliateTrackingDetailsType'

=cut

sub setAffiliateTrackingDetails {
  my $self = shift;
  $self->{'AffiliateTrackingDetails'} = shift
}

=head2 getAffiliateTrackingDetails()

#    Returns: 'ns:AffiliateTrackingDetailsType'

=cut

sub getAffiliateTrackingDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AffiliateTrackingDetails'
		,'eBay::API::XML::DataType::AffiliateTrackingDetailsType');
}


=head2 setBidRange()

Limits the results to items with a minimum or maximum number
of bids. You also can specify a bid range by specifying
both a minimum and maximum number of bids in one call.

  RequiredInput: No
#    Argument: 'ns:BidRangeType'

=cut

sub setBidRange {
  my $self = shift;
  $self->{'BidRange'} = shift
}

=head2 getBidRange()

#    Returns: 'ns:BidRangeType'

=cut

sub getBidRange {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidRange'
		,'eBay::API::XML::DataType::BidRangeType');
}


=head2 setCategories()

Retrieves statistical (histogram) information about categories that contain items
that match the query. Can also cause the result to include information
about buying guides that are associated with the matching categories.
Does not control the set of listings to return or the details to return
for each listing.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingForMatchingCategories
Title: Searching for Matching Categories

  RequiredInput: No
#    Argument: 'ns:RequestCategoriesType'

=cut

sub setCategories {
  my $self = shift;
  $self->{'Categories'} = shift
}

=head2 getCategories()

#    Returns: 'ns:RequestCategoriesType'

=cut

sub getCategories {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Categories'
		,'eBay::API::XML::DataType::RequestCategoriesType');
}


=head2 setCategoryID()

Limits the result set to items in the specified category.
If no category ID is specified, all categories
are searched by default.<br>
<br>
<span class="tablenote"><b>Note:</b>
CategoryID does not control whether you will see the
item's categories in the response. Set the value of DetailLevel to
ItemReturnCategories to retrieve each item's primary category and
secondary category (if any) in the response.</span><br>
<br>
If the specified category ID doesn't match an existing category
for the site, an invalid-category error message is returned.
Here are a few ways to determine valid categories:<br>
- Use the Categories input field to retrieve
matching categories, and then submit the request again with one of
those categories.<br>
- Find items in all categories but set DetailLevel to
ItemReturnCategories, determine the primary (or secondary)
category ID for a similar item in the results, and then
submit the request again with that category ID.<br>
- Use another call like GetCategories or GetSuggestedCategories to
find a valid category ID.<br>
<br>
You must pass ProductID, Query, ExternalProductID, or CategoryID
in the request. CategoryID can be used in combination with Query.
It is not allowed with ExternalProductID or ProductID.
If you pass CategoryID without Query, it
must specify a leaf category ID. That is, it cannot be a
meta-category ID (e.g., 267 for "Books").

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByCategoryID
Title: Searching by Category ID
MaxLength: 10

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setCharityID()

Restricts listings to return only items that support the specified
nonprofit charity organization. Retrieve CharityID values with
GetCharities.

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setCharityID {
  my $self = shift;
  $self->{'CharityID'} = shift
}

=head2 getCharityID()

#    Returns: 'xs:int'

=cut

sub getCharityID {
  my $self = shift;
  return $self->{'CharityID'};
}


=head2 setEndTimeFrom()

Limits the results to items ending within a time range. EndTimeFrom
specifies the beginning of the time range. Specify a time in the future.
If you specify a time in the past, the current time is used. If specified,
EndTimeTo must also be specified (with a value equal to or later than
EndTimeFrom). Express the time in GMT. Cannot be used with the ModTimeFrom
filter.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTimeFrom {
  my $self = shift;
  $self->{'EndTimeFrom'} = shift
}

=head2 getEndTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeFrom {
  my $self = shift;
  return $self->{'EndTimeFrom'};
}


=head2 setEndTimeTo()

Limits the results to items ending within a time range. EndTimeTo specifies
the end of the time range. If specified, EndTimeFrom must also be specified
(with a value equal to or earlier than EndTimeTo). Express the time in GMT.
Cannot be used with the ModTimeFrom filter.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setEndTimeTo {
  my $self = shift;
  $self->{'EndTimeTo'} = shift
}

=head2 getEndTimeTo()

#    Returns: 'xs:dateTime'

=cut

sub getEndTimeTo {
  my $self = shift;
  return $self->{'EndTimeTo'};
}


=head2 setExpandSearch()

Expands search results when a small result set is returned. For example,
on the US site (site ID 0), if a search would normally result in fewer
than 10 items, then if you specify true for this tag, the search results
are expanded. Specifically, the search returns items (if there are
matches) in one or more of the following containers:
InternationalExpansionArray (for items available from international
sellers), FilterRemovedExpansionArray (items that would be returned if
filters such as PriceRangeFilter are removed), StoreExpansionArray (for
items listed in the Store Inventory Format), and
AllCategoriesExpansionArray (for items available if category filters are
removed). Maximum number of items returned in each expansion container is
6 to 10.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setExpandSearch {
  my $self = shift;
  $self->{'ExpandSearch'} = shift
}

=head2 isExpandSearch()

#    Returns: 'xs:boolean'

=cut

sub isExpandSearch {
  my $self = shift;
  return $self->{'ExpandSearch'};
}


=head2 setExternalProductID()

An exclusive query to only retrieve items that were listed with the
specified ISBN or UPC. Only applicable for items that were listed with
Pre-filled Item Information in media categories (Books, Music, DVDs and
Movies, and Video Games). You must pass ProductID, Query,
ExternalProductID, or CategoryID in the request. If you use
ExternalProductID, do not use Query, ProductID, or CategoryID.

  RequiredInput: Conditionally
#    Argument: 'ns:ExternalProductIDType'

=cut

sub setExternalProductID {
  my $self = shift;
  $self->{'ExternalProductID'} = shift
}

=head2 getExternalProductID()

#    Returns: 'ns:ExternalProductIDType'

=cut

sub getExternalProductID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ExternalProductID'
		,'eBay::API::XML::DataType::ExternalProductIDType');
}


=head2 setFreeShipping()

If true, only items with free shipping for the user's location are
returned. The user's location is determined from the site ID specified
in the request. If false, no filtering is done via this attribute. A
listing is not considered a free shipping listing if it requires
insurance or requires pick up or requires a shipping surcharge.

Default: false

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setFreeShipping {
  my $self = shift;
  $self->{'FreeShipping'} = shift
}

=head2 isFreeShipping()

#    Returns: 'xs:boolean'

=cut

sub isFreeShipping {
  my $self = shift;
  return $self->{'FreeShipping'};
}


=head2 setGranularityLevel()

Optional tag that currently accepts only one value for this call: Coarse.
Other values return an error. If you specify Coarse, the call
returns the fields shown in the
<a href="#GranularityLevel">GranularityLevel table</a>
plus any tags resulting from the detail level you specify.
Controls the fields to return for each listing (not the set of
listings that match the query).

PresentDetails: Yes

  RequiredInput: No
#    Argument: 'ns:GranularityLevelCodeType'

=cut

sub setGranularityLevel {
  my $self = shift;
  $self->{'GranularityLevel'} = shift
}

=head2 getGranularityLevel()

#    Returns: 'ns:GranularityLevelCodeType'

=cut

sub getGranularityLevel {
  my $self = shift;
  return $self->{'GranularityLevel'};
}


=head2 setGroup()

You can group Best Match search results by category by specifying BestMatchCategoryGroup
in the Order field. When you specify BestMatchCategoryGroup
in the Order field, you can also specify Group.MaxEntriesPerGroup and/or Group.MaxGroups.
When you specify BestMatchCategoryGroup
in the Order field, there will be fewer results returned because Best Matches
in lower-level (leaf) categories and higher-level categories are taken into account.
There is not a direct correlation between the number of items returned in a regular sort (or in a BestMatch sort) and the number of items that are returned when you specify BestMatchCategoryGroup
in the Order field.
When you specify BestMatchCategoryGroup
in the Order field, not more than 2 pages of results are returned.
See also the GroupCategoryID element in ItemType.

  RequiredInput: No
#    Argument: 'ns:GroupType'

=cut

sub setGroup {
  my $self = shift;
  $self->{'Group'} = shift
}

=head2 getGroup()

#    Returns: 'ns:GroupType'

=cut

sub getGroup {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Group'
		,'eBay::API::XML::DataType::GroupType');
}


=head2 setIncludeCondition()

If true, each item in the result set can also
include the item condition (e.g., New or Used) in the
ItemSpecific property of the response. An item only includes
the condition in the response if the seller filled in the
Item Condition in the Item Specifics section of the listing.
(That is, the condition is not returned if the seller
only put the word "New" in the listing's title.) <br>
<br>
Controls the details to return for each listing (not the set of
listings that match the query). <br>
<br>To control whether to retrieve only new or used items,
see ItemCondition (or SearchRequest).

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeCondition {
  my $self = shift;
  $self->{'IncludeCondition'} = shift
}

=head2 isIncludeCondition()

#    Returns: 'xs:boolean'

=cut

sub isIncludeCondition {
  my $self = shift;
  return $self->{'IncludeCondition'};
}


=head2 setIncludeFeedback()

If true, each item in the result set also includes information about the
seller's feedback. Controls the details to return for each listing (not
the set of listings that match the query).
<br>
For GetSearchResults, if set to true will also return the seller's User ID.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeFeedback {
  my $self = shift;
  $self->{'IncludeFeedback'} = shift
}

=head2 isIncludeFeedback()

#    Returns: 'xs:boolean'

=cut

sub isIncludeFeedback {
  my $self = shift;
  return $self->{'IncludeFeedback'};
}


=head2 setIncludeGetItFastItems()

When passed with a value of true, limits the results to Get It Fast listings.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setIncludeGetItFastItems {
  my $self = shift;
  $self->{'IncludeGetItFastItems'} = shift
}

=head2 isIncludeGetItFastItems()

#    Returns: 'xs:boolean'

=cut

sub isIncludeGetItFastItems {
  my $self = shift;
  return $self->{'IncludeGetItFastItems'};
}


=head2 setItemCondition()

Limits the results to new or used items, plus items that have no
condition specified.<br>
<br>
Matches the new or used condition that the seller specified
in the Item Specifics section of the listing.
(That is, this won't specifically match on items where the seller
only put the word "New" in the listing's title.)<br>
<br>
Only applicable to sites and categories that support a
sitewide (global) item condition. For example, the US site
does not currently support this. See GetCategory2CS.
To search for the item condition on the US site,
use a product finder instead (see SearchRequest).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=ItemCondition
Title: Specifying an Item's Condition
, URL: GetSearchResults.html#Request.SearchRequest
Title: (GetSearchResults) SearchRequest
, URL: GetSearchResults.html#Request.IncludeCondition
Title: (GetSearchResults) IncludeCondition


  RequiredInput: No
#    Argument: 'ns:ItemConditionCodeType'

=cut

sub setItemCondition {
  my $self = shift;
  $self->{'ItemCondition'} = shift
}

=head2 getItemCondition()

#    Returns: 'ns:ItemConditionCodeType'

=cut

sub getItemCondition {
  my $self = shift;
  return $self->{'ItemCondition'};
}


=head2 setItemTypeFilter()

Filters items based on the ListingType set for the items.
If ItemTypeFilter is not
specified (or if the AllItemTypes value of ItemTypeFilter is specified),
all listing types can be returned unless another relevant filter is
specified. You cannot use GetSearchResults to search eBay Express.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByListingType
Title: Searching By Listing Type

  RequiredInput: No
  Default: AllItems
#    Argument: 'ns:ItemTypeFilterCodeType'

=cut

sub setItemTypeFilter {
  my $self = shift;
  $self->{'ItemTypeFilter'} = shift
}

=head2 getItemTypeFilter()

#    Returns: 'ns:ItemTypeFilterCodeType'

=cut

sub getItemTypeFilter {
  my $self = shift;
  return $self->{'ItemTypeFilter'};
}


=head2 setLocalSearchPostalCode()

Include local items in returning results near this postal code. This
postal code is the basis for local search.

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setLocalSearchPostalCode {
  my $self = shift;
  $self->{'LocalSearchPostalCode'} = shift
}

=head2 getLocalSearchPostalCode()

#    Returns: 'xs:string'

=cut

sub getLocalSearchPostalCode {
  my $self = shift;
  return $self->{'LocalSearchPostalCode'};
}


=head2 setLot()

Limits the results to only those listings for which Item.LotSize is 2 or greater.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setLot {
  my $self = shift;
  $self->{'Lot'} = shift
}

=head2 isLot()

#    Returns: 'xs:boolean'

=cut

sub isLot {
  my $self = shift;
  return $self->{'Lot'};
}


=head2 setMaxRelatedSearchKeywords()

The maximum number of related keywords to be retrieved.
Use this field if you want the search results to include
recommended keywords (that is, keywords matching one or more of the
original keywords) in a RelatedSearchKeywordArray container.
A value of 0 (the default) means no related search information is processed.

Max: 100
Min: 0

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setMaxRelatedSearchKeywords {
  my $self = shift;
  $self->{'MaxRelatedSearchKeywords'} = shift
}

=head2 getMaxRelatedSearchKeywords()

#    Returns: 'xs:int'

=cut

sub getMaxRelatedSearchKeywords {
  my $self = shift;
  return $self->{'MaxRelatedSearchKeywords'};
}


=head2 setModTimeFrom()

Limits the results to active items whose status has changed
since the specified time. Specify a time in the past.
Time must be in GMT. Cannot be used with the EndTime filters.

  RequiredInput: No
#    Argument: 'xs:dateTime'

=cut

sub setModTimeFrom {
  my $self = shift;
  $self->{'ModTimeFrom'} = shift
}

=head2 getModTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getModTimeFrom {
  my $self = shift;
  return $self->{'ModTimeFrom'};
}


=head2 setMotorsGermanySearchable()

Limits the results based on each item's eligibility to appear on the
mobile.de site. If false, excludes eligible items from search results. If
true, queries for eligible items only. If not specified, the search
results are not affected. Only applicable for items listed on the eBay
Germany site (site ID 77) in subcategories of mobile.de search-enabled
categories.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setMotorsGermanySearchable {
  my $self = shift;
  $self->{'MotorsGermanySearchable'} = shift
}

=head2 isMotorsGermanySearchable()

#    Returns: 'xs:boolean'

=cut

sub isMotorsGermanySearchable {
  my $self = shift;
  return $self->{'MotorsGermanySearchable'};
}


=head2 setOrder()

Specifies the order in which listings are returned in a result set.
Listings may be sorted by end time, start time, and in other ways listed
in the SearchSortOrderCodeType. Controls the way the listings are
organized in the response (not the details to return for each listing).
For most sites, the default sort order is by items ending soonest. Store
Inventory listings are usually returned after other listing types,
regardless of the sort order.

Default: BestMatchSort

  RequiredInput: No
#    Argument: 'ns:SearchSortOrderCodeType'

=cut

sub setOrder {
  my $self = shift;
  $self->{'Order'} = shift
}

=head2 getOrder()

#    Returns: 'ns:SearchSortOrderCodeType'

=cut

sub getOrder {
  my $self = shift;
  return $self->{'Order'};
}


=head2 setPagination()

Controls the pagination of the result set. Child elements specify the
maximum number of item listings to return per call and which page of data
to return. Controls the way the listings are organized in the response
(not the details to return for each listing).

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=PaginatingSearchResults
Title: Paginating Search Results

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

#    Returns: 'ns:PaginationType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationType');
}


=head2 setPaymentMethod()

Limits the results to items that accept a specific payment method or methods.

  RequiredInput: No
#    Argument: 'ns:PaymentMethodSearchCodeType'

=cut

sub setPaymentMethod {
  my $self = shift;
  $self->{'PaymentMethod'} = shift
}

=head2 getPaymentMethod()

#    Returns: 'ns:PaymentMethodSearchCodeType'

=cut

sub getPaymentMethod {
  my $self = shift;
  return $self->{'PaymentMethod'};
}


=head2 setPriceRangeFilter()

Limits the result set to just those items where the price is within the
specified range. The PriceRangeFilterType includes a minimum and a maximum
price.

  RequiredInput: No
#    Argument: 'ns:PriceRangeFilterType'

=cut

sub setPriceRangeFilter {
  my $self = shift;
  $self->{'PriceRangeFilter'} = shift
}

=head2 getPriceRangeFilter()

#    Returns: 'ns:PriceRangeFilterType'

=cut

sub getPriceRangeFilter {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PriceRangeFilter'
		,'eBay::API::XML::DataType::PriceRangeFilterType');
}


=head2 setProductID()

An exclusive query to retrieve items that were listed with the specified
eBay catalog product. You must pass ProductID, Query, ExternalProductID,
or CategoryID in the request. If you use ProductID, do not use Query,
ExternalProductID, or CategoryID.<br>
<br>
As of mid-2008, some sites (such as eBay US, Germany, Austria, and Switzerland) are
updating, replacing, deleting, or merging some products (as a result of migrating from one
catalog data provider to another).
If you specify one of these products, the call may return a warning,
or it may return an error if the product has been deleted.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByProductID
Title: Searching for Listings by ProductID

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setProductID {
  my $self = shift;
  $self->{'ProductID'} = shift
}

=head2 getProductID()

#    Returns: 'xs:string'

=cut

sub getProductID {
  my $self = shift;
  return $self->{'ProductID'};
}


=head2 setProximitySearch()

Limits the result set to just those items whose location is within a
specified distance of a postal code. The ProximitySearchType includes
a maximum distance and a postal code.

  RequiredInput: No
#    Argument: 'ns:ProximitySearchType'

=cut

sub setProximitySearch {
  my $self = shift;
  $self->{'ProximitySearch'} = shift
}

=head2 getProximitySearch()

#    Returns: 'ns:ProximitySearchType'

=cut

sub getProximitySearch {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ProximitySearch'
		,'eBay::API::XML::DataType::ProximitySearchType');
}


=head2 setQuantity()

Limits the results to listings that offer a certain number of items
matching the query. If Lot is also specified, then Quantity is the number
of lots multiplied by the number of objects in each lot. Use
QuantityOperator to specify that you are seeking listings with quantities
greater than, equal to, or less than Quantity.

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setQuantity {
  my $self = shift;
  $self->{'Quantity'} = shift
}

=head2 getQuantity()

#    Returns: 'xs:int'

=cut

sub getQuantity {
  my $self = shift;
  return $self->{'Quantity'};
}


=head2 setQuantityOperator()

Limits the results to listings with quantities greater than, equal to, or
less than Quantity. Controls the set of listings to return (not the
details to return for each listing).

  RequiredInput: No
#    Argument: 'ns:QuantityOperatorCodeType'

=cut

sub setQuantityOperator {
  my $self = shift;
  $self->{'QuantityOperator'} = shift
}

=head2 getQuantityOperator()

#    Returns: 'ns:QuantityOperatorCodeType'

=cut

sub getQuantityOperator {
  my $self = shift;
  return $self->{'QuantityOperator'};
}


=head2 setQuery()

A query that specifies a search string. The search string consists of one or more
keywords to search for in the listing title and/or description.
The words "and" and "or" are treated like any other word. Only use "and",
"or", or "the" if you are searching for listings containing these words.
You can use AND or OR logic by including certain modifiers.
Wildcards (e.g., *) are also supported. Be careful when using spaces before
or after modifiers and wildcards (+, -, or *). See the
eBay Web Services Guide	for a list of valid modifiers and examples.
Query is not applicable in combination with ExternalProductID or ProductID.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByKeywords
Title: Searching by Keywords
MaxLength: 350 (characters)

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setQuery {
  my $self = shift;
  $self->{'Query'} = shift
}

=head2 getQuery()

#    Returns: 'xs:string'

=cut

sub getQuery {
  my $self = shift;
  return $self->{'Query'};
}


=head2 setSearchFlags()

Secondary search criterion that checks item descriptions for keywords that
match the query, limits the search results to only charity items, limits
the result set to those items with PayPal as a payment method, and/or
provides other criteria to refine the search.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:SearchFlagsCodeType'

=cut

sub setSearchFlags {
  my $self = shift;
  $self->{'SearchFlags'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchFlags()

#    Returns: reference to an array  
                      of 'ns:SearchFlagsCodeType'

=cut

sub getSearchFlags {
  my $self = shift;
  return $self->_getDataTypeArray('SearchFlags');
}


=head2 setSearchLocationFilter()

Limits the result set to just those items that meet location criteria:
listed in a specified eBay site, location where the seller has the item,
location from which the user is searching, and/or items listed with a
specified currency. You cannot use GetSearchResults to search eBay Express.

  RequiredInput: No
#    Argument: 'ns:SearchLocationFilterType'

=cut

sub setSearchLocationFilter {
  my $self = shift;
  $self->{'SearchLocationFilter'} = shift
}

=head2 getSearchLocationFilter()

#    Returns: 'ns:SearchLocationFilterType'

=cut

sub getSearchLocationFilter {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SearchLocationFilter'
		,'eBay::API::XML::DataType::SearchLocationFilterType');
}


=head2 setSearchRequest()

A query consisting of a set of attributes (Item Specifics). Use this kind
of query to search against the Item Specifics in listings (e.g., to search
for a particular shoe size). If the query includes multiple attributes,
the search engine will apply "AND" logic to the query and narrow the
results. Use GetProductFinder to determine the list of valid attributes
and how many are permitted for the specified characteristic set. Retrieves
items along with any buying guide details that are associated with the
specified product finder. Applicable in combination with the Query
argument. Cannot be used in combination with ProductID or
ExternalProductID.<br>
<br>
If you are searching for tickets, see TicketFinder instead.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=SearchingByItemSpecifics
Title: Searching by Item Specifics (Buy-Side Product Finder)
, URL: CallName.html#Request.TicketFinder
Title: (GetSearchResults) TicketFinder


  RequiredInput: No
#    Argument: 'ns:SearchRequestType'

=cut

sub setSearchRequest {
  my $self = shift;
  $self->{'SearchRequest'} = shift
}

=head2 getSearchRequest()

#    Returns: 'ns:SearchRequestType'

=cut

sub getSearchRequest {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SearchRequest'
		,'eBay::API::XML::DataType::SearchRequestType');
}


=head2 setSearchType()

Limits the listings in the result set based on whether they are in the
Gallery. The choices are items in the Gallery or Gallery and non-Gallery
items.

  RequiredInput: No
#    Argument: 'ns:SearchTypeCodeType'

=cut

sub setSearchType {
  my $self = shift;
  $self->{'SearchType'} = shift
}

=head2 getSearchType()

#    Returns: 'ns:SearchTypeCodeType'

=cut

sub getSearchType {
  my $self = shift;
  return $self->{'SearchType'};
}


=head2 setSellerBusinessType()

Limits the results to those of a particular seller business type such as
commercial or private.

  RequiredInput: No
#    Argument: 'ns:SellerBusinessCodeType'

=cut

sub setSellerBusinessType {
  my $self = shift;
  $self->{'SellerBusinessType'} = shift
}

=head2 getSellerBusinessType()

#    Returns: 'ns:SellerBusinessCodeType'

=cut

sub getSellerBusinessType {
  my $self = shift;
  return $self->{'SellerBusinessType'};
}


=head2 setStoreSearchFilter()

Limits the result set to just those items that meet criteria related to
eBay Stores sellers and eBay Stores. Use this to retrieve items listed in
a particular seller's eBay Store or in all store sellers' eBay Stores.
This filter always causes item description text to be searched with the
string specified in the Query field. That is, StoreSearchFilter
forces the type of search that would have occurred if you had specified
SearchInDescription in the SearchFlags field.

  RequiredInput: No
#    Argument: 'ns:SearchStoreFilterType'

=cut

sub setStoreSearchFilter {
  my $self = shift;
  $self->{'StoreSearchFilter'} = shift
}

=head2 getStoreSearchFilter()

#    Returns: 'ns:SearchStoreFilterType'

=cut

sub getStoreSearchFilter {
  my $self = shift;
  return $self->_getDataTypeInstance( 'StoreSearchFilter'
		,'eBay::API::XML::DataType::SearchStoreFilterType');
}


=head2 setTicketFinder()

Searches for event ticket listings only. If specified, this cannot be empty.
For example, to search for all tickets (with no event, date, city, or quantity constraints),
specify EventType with a value of Any.
If specified, Query is optional. Query is useful when the user wants to search
for a particular event name (like "eric clapton") or a venue that might be
included in the listing title.
If TicketFinder and SearchRequest are both specified in the same request,
SearchRequest is ignored.

SeeLink: URL: http://developer.ebay.com/DevZone/XML/docs/WebHelp/index.htm?context=eBay_XML_API&topic=TicketFinder
Title: Performing a Simple Ticket Finder Search

  RequiredInput: No
#    Argument: 'ns:TicketDetailsType'

=cut

sub setTicketFinder {
  my $self = shift;
  $self->{'TicketFinder'} = shift
}

=head2 getTicketFinder()

#    Returns: 'ns:TicketDetailsType'

=cut

sub getTicketFinder {
  my $self = shift;
  return $self->_getDataTypeInstance( 'TicketFinder'
		,'eBay::API::XML::DataType::TicketDetailsType');
}


=head2 setTotalOnly()

Retrieves the total quantity of matching items, without returning the item
data. See PaginationResult.TotalNumberOfEntries in the response. If
TotalOnly and Categories.CategoriesOnly are both specified in the request
and their values are inconsistent with each other, TotalOnly overrides
Categories.CategoriesOnly. That is, if TotalOnly is true and
Categories.CategoriesOnly is false, the results include matching
categories but no item data or buying guides. If TotalOnly is false and
Categories.CategoriesOnly is true, the results include matching
categories, item data, and buying guides. If TotalOnly is not specified,
it has no logical effect.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut

sub setTotalOnly {
  my $self = shift;
  $self->{'TotalOnly'} = shift
}

=head2 isTotalOnly()

#    Returns: 'xs:boolean'

=cut

sub isTotalOnly {
  my $self = shift;
  return $self->{'TotalOnly'};
}


=head2 setUserIdFilter()

Limits the the result set to just those items listed by one or more
specified sellers or those items not listed by the one or more specified
sellers.

  RequiredInput: No
#    Argument: 'ns:UserIdFilterType'

=cut

sub setUserIdFilter {
  my $self = shift;
  $self->{'UserIdFilter'} = shift
}

=head2 getUserIdFilter()

#    Returns: 'ns:UserIdFilterType'

=cut

sub getUserIdFilter {
  my $self = shift;
  return $self->_getDataTypeInstance( 'UserIdFilter'
		,'eBay::API::XML::DataType::UserIdFilterType');
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   

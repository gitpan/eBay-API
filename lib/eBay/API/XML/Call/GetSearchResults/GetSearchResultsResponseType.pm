#!/usr/bin/perl

package eBay::API::XML::Call::GetSearchResults::GetSearchResultsResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSearchResultsResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSearchResults::GetSearchResultsResponseType

=head1 DESCRIPTION

Response contains the item listings that have the specified keyword(s) in the
title, sub-title, and (optionally) the description. If the request uses any of
the optional filtering properties, the item listings returned are those
containing the keyword(s) and meeting the filter criteria. <br><br>
Not applicable to eBay Express or Half.com.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSearchResults::GetSearchResultsResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::BuyingGuideDetailsType;
use eBay::API::XML::DataType::CategoryArrayType;
use eBay::API::XML::DataType::ExpansionArrayType;
use eBay::API::XML::DataType::PaginationResultType;
use eBay::API::XML::DataType::RelatedSearchKeywordArrayType;
use eBay::API::XML::DataType::SearchResultItemArrayType;
use eBay::API::XML::DataType::SpellingSuggestionType;


my @gaProperties = ( [ 'AllCategoriesExpansionArray', 'ns:ExpansionArrayType', ''
	     ,'eBay::API::XML::DataType::ExpansionArrayType', '1' ]
	, [ 'BuyingGuideDetails', 'ns:BuyingGuideDetailsType', ''
	     ,'eBay::API::XML::DataType::BuyingGuideDetailsType', '1' ]
	, [ 'CategoryArray', 'ns:CategoryArrayType', ''
	     ,'eBay::API::XML::DataType::CategoryArrayType', '1' ]
	, [ 'FilterRemovedExpansionArray', 'ns:ExpansionArrayType', ''
	     ,'eBay::API::XML::DataType::ExpansionArrayType', '1' ]
	, [ 'HasMoreItems', 'xs:boolean', '', '', '' ]
	, [ 'InternationalExpansionArray', 'ns:ExpansionArrayType', ''
	     ,'eBay::API::XML::DataType::ExpansionArrayType', '1' ]
	, [ 'ItemsPerPage', 'xs:int', '', '', '' ]
	, [ 'PageNumber', 'xs:int', '', '', '' ]
	, [ 'PaginationResult', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'RelatedSearchKeywordArray', 'ns:RelatedSearchKeywordArrayType', ''
	     ,'eBay::API::XML::DataType::RelatedSearchKeywordArrayType', '1' ]
	, [ 'SearchResultItemArray', 'ns:SearchResultItemArrayType', ''
	     ,'eBay::API::XML::DataType::SearchResultItemArrayType', '1' ]
	, [ 'SpellingSuggestion', 'ns:SpellingSuggestionType', ''
	     ,'eBay::API::XML::DataType::SpellingSuggestionType', '1' ]
	, [ 'StoreExpansionArray', 'ns:ExpansionArrayType', ''
	     ,'eBay::API::XML::DataType::ExpansionArrayType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setAllCategoriesExpansionArray()

Can be returned if the request specifies that ExpandSearch is true.
Provides additional search results when a small result set would have
been returned with the original search. For example, on the US site (site
ID 0), if a search would normally result in fewer than 10 items, and
ExpandSearch is true, the search results are expanded to include (if
matching the query) the AllCategoriesExpansionArray container for items,
as well as other containers. The AllCategoriesExpansionArray container
contains items available if category filters are removed.

#    Argument: 'ns:ExpansionArrayType'

=cut

sub setAllCategoriesExpansionArray {
  my $self = shift;
  $self->{'AllCategoriesExpansionArray'} = shift
}

=head2 getAllCategoriesExpansionArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:ExpansionArrayType'

=cut

sub getAllCategoriesExpansionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'AllCategoriesExpansionArray'
		,'eBay::API::XML::DataType::ExpansionArrayType');
}


=head2 setBuyingGuideDetails()

Contains URLs and other information about relevant buying guides (if
any), as well as the site's buying guide hub. Unavailable in the Sandbox
environment. Buying guides are useful to buyers who do not have a
specific product in mind. For example, a digital camera buying guide
could help a buyer determine what kind of digital camera is right for
them. Only returned for product finder searches (using
SearchRequest.SearchAttributes) and for searches that retrieve matching
categories along with item data (using Categories.CategoriesOnly=false).

#    Argument: 'ns:BuyingGuideDetailsType'

=cut

sub setBuyingGuideDetails {
  my $self = shift;
  $self->{'BuyingGuideDetails'} = shift
}

=head2 getBuyingGuideDetails()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:BuyingGuideDetailsType'

=cut

sub getBuyingGuideDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BuyingGuideDetails'
		,'eBay::API::XML::DataType::BuyingGuideDetailsType');
}


=head2 setCategoryArray()

Shows the distribution of items across each category. 
Consists of statistical information about
categories that contain items that match
the query, if any. Returns empty if no matches are found or when the
Categories filter was not passed in the request. (For categories
associated with specific items, see items returned in each search
result.) 
You must use fields within the Categories input container
if you want the CategoryArray response container to be returned.

#    Argument: 'ns:CategoryArrayType'

=cut

sub setCategoryArray {
  my $self = shift;
  $self->{'CategoryArray'} = shift
}

=head2 getCategoryArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'ns:CategoryArrayType'

=cut

sub getCategoryArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CategoryArray'
		,'eBay::API::XML::DataType::CategoryArrayType');
}


=head2 setFilterRemovedExpansionArray()

Can be returned if the request specifies that ExpandSearch is true.
Provides additional search results when a small result set would have
been returned with the original search. For example, on the US site (site
ID 0), if a search would normally result in fewer than 10 items, and
ExpandSearch is true, the search results are expanded to include (if
matching the query) the FilterRemovedExpansionArray container for items,
as well as other containers. The FilterRemovedExpansionArray container
contains items that would be returned if filters such as PriceRangeFilter
are removed.

#    Argument: 'ns:ExpansionArrayType'

=cut

sub setFilterRemovedExpansionArray {
  my $self = shift;
  $self->{'FilterRemovedExpansionArray'} = shift
}

=head2 getFilterRemovedExpansionArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:ExpansionArrayType'

=cut

sub getFilterRemovedExpansionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FilterRemovedExpansionArray'
		,'eBay::API::XML::DataType::ExpansionArrayType');
}


=head2 setHasMoreItems()

Indicates whether there are more items, not yet returned, that match the
search criteria.

#    Argument: 'xs:boolean'

=cut

sub setHasMoreItems {
  my $self = shift;
  $self->{'HasMoreItems'} = shift
}

=head2 isHasMoreItems()

  Returned: Always
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'xs:boolean'

=cut

sub isHasMoreItems {
  my $self = shift;
  return $self->{'HasMoreItems'};
}


=head2 setInternationalExpansionArray()

Can be returned if the request specifies that ExpandSearch is true.
Provides additional search results when a small result set would have
been returned with the original search. For example, on the US site (site
ID 0), if a search would normally result in fewer than 10 items, and
ExpandSearch is true, the search results are expanded to include (if
matching the query) the InternationalExpansionArray container for items,
as well as other containers. The InternationalExpansionArray container
contains items available from international sellers.

#    Argument: 'ns:ExpansionArrayType'

=cut

sub setInternationalExpansionArray {
  my $self = shift;
  $self->{'InternationalExpansionArray'} = shift
}

=head2 getInternationalExpansionArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:ExpansionArrayType'

=cut

sub getInternationalExpansionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'InternationalExpansionArray'
		,'eBay::API::XML::DataType::ExpansionArrayType');
}


=head2 setItemsPerPage()

Indicates the maximum number of items that can be returned in a
SearchResultItemArray for any given call.

#    Argument: 'xs:int'

=cut

sub setItemsPerPage {
  my $self = shift;
  $self->{'ItemsPerPage'} = shift
}

=head2 getItemsPerPage()

  Returned: Always
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'xs:int'

=cut

sub getItemsPerPage {
  my $self = shift;
  return $self->{'ItemsPerPage'};
}


=head2 setPageNumber()

Indicates the page of data returned by the current call. For instance,
for the first set of items can be returned, this field has a value of
one.

#    Argument: 'xs:int'

=cut

sub setPageNumber {
  my $self = shift;
  $self->{'PageNumber'} = shift
}

=head2 getPageNumber()

  Returned: Always
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'xs:int'

=cut

sub getPageNumber {
  my $self = shift;
  return $self->{'PageNumber'};
}


=head2 setPaginationResult()

Indicates the results of the pagination, including the total number of
pages of data that can be returned and the total number of items that can
be returned.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPaginationResult {
  my $self = shift;
  $self->{'PaginationResult'} = shift
}

=head2 getPaginationResult()

  Returned: Always
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'ns:PaginationResultType'

=cut

sub getPaginationResult {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PaginationResult'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setRelatedSearchKeywordArray()

Container for keywords related to the original keywords in the request.
Can be returned if the request specified more than zero in the MaxRelatedSearchKeywords field.

#    Argument: 'ns:RelatedSearchKeywordArrayType'

=cut

sub setRelatedSearchKeywordArray {
  my $self = shift;
  $self->{'RelatedSearchKeywordArray'} = shift
}

=head2 getRelatedSearchKeywordArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:RelatedSearchKeywordArrayType'

=cut

sub getRelatedSearchKeywordArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'RelatedSearchKeywordArray'
		,'eBay::API::XML::DataType::RelatedSearchKeywordArrayType');
}


=head2 setSearchResultItemArray()

Contains the returned item listings, if any. The data for each listing is
returned in an ItemType object.

#    Argument: 'ns:SearchResultItemArrayType'

=cut

sub setSearchResultItemArray {
  my $self = shift;
  $self->{'SearchResultItemArray'} = shift
}

=head2 getSearchResultItemArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
           GranularityLevel: Coarse

#    Returns: 'ns:SearchResultItemArrayType'

=cut

sub getSearchResultItemArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SearchResultItemArray'
		,'eBay::API::XML::DataType::SearchResultItemArrayType');
}


=head2 setSpellingSuggestion()

Suggestion for a different spelling of the search term or terms, along
with the number of matching items that would have been returned if the
suggestions had been used. The suggestions are given in Text tags and the
suggestion for the first word is given before the suggestion for
subsequent words. Suggestions are based on correctly-spelled terms in
items, so suggestions vary over time and depend on whether a word or word
combination is in one or more items.

#    Argument: 'ns:SpellingSuggestionType'

=cut

sub setSpellingSuggestion {
  my $self = shift;
  $self->{'SpellingSuggestion'} = shift
}

=head2 getSpellingSuggestion()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:SpellingSuggestionType'

=cut

sub getSpellingSuggestion {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SpellingSuggestion'
		,'eBay::API::XML::DataType::SpellingSuggestionType');
}


=head2 setStoreExpansionArray()

Contains items listed in the Store Inventory Format,
if the request specifies that ExpandSearch is true.

#    Argument: 'ns:ExpansionArrayType'

=cut

sub setStoreExpansionArray {
  my $self = shift;
  $self->{'StoreExpansionArray'} = shift
}

=head2 getStoreExpansionArray()

  Returned: Conditionally
  Details: DetailLevel: ItemReturnCategories, ItemReturnAttributes, ReturnAll, none
#    Returns: 'ns:ExpansionArrayType'

=cut

sub getStoreExpansionArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'StoreExpansionArray'
		,'eBay::API::XML::DataType::ExpansionArrayType');
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

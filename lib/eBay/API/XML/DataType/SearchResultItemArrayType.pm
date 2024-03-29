#!/usr/bin/perl

package eBay::API::XML::DataType::SearchResultItemArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchResultItemArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::SearchResultItemArrayType

=head1 DESCRIPTION

Container for a list of search result items, such as returned by
GetSearchResults. Will contain zero, one, or multiple
SearchResultItemType items, each of which represents one item listing
that was found by the search.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::SearchResultItemArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::SearchResultItemType;


my @gaProperties = ( [ 'SearchResultItem', 'ns:SearchResultItemType', '1'
	     ,'eBay::API::XML::DataType::SearchResultItemType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

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



=head2 setSearchResultItem()

Contains data for an item listing found by a search.

#    Argument: reference to an array  
                      of 'ns:SearchResultItemType'

=cut

sub setSearchResultItem {
  my $self = shift;
  $self->{'SearchResultItem'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getSearchResultItem()

  Calls: GetSearchResults
  Returned: Conditionally
  Details: DetailLevel: ItemReturnAttributes, ItemReturnCategories, none, ReturnAll
           GranularityLevel: Coarse


#    Returns: reference to an array  
                      of 'ns:SearchResultItemType'

=cut

sub getSearchResultItem {
  my $self = shift;
  return $self->_getDataTypeArray('SearchResultItem');
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

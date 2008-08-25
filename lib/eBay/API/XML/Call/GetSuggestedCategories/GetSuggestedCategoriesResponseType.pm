#!/usr/bin/perl

package eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetSuggestedCategoriesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesResponseType

=head1 DESCRIPTION

Returns a list of categories with the highest number
of listings whose titles or descriptions contain the keywords
specified in a GetSuggestedCategoriesRequest.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetSuggestedCategories::GetSuggestedCategoriesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::SuggestedCategoryArrayType;


my @gaProperties = ( [ 'CategoryCount', 'xs:int', '', '', '' ]
	, [ 'SuggestedCategoryArray', 'ns:SuggestedCategoryArrayType', ''
	     ,'eBay::API::XML::DataType::SuggestedCategoryArrayType', '1' ]
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



=head2 setCategoryCount()

Indicates the number of categories in the array.

#    Argument: 'xs:int'

=cut

sub setCategoryCount {
  my $self = shift;
  $self->{'CategoryCount'} = shift
}

=head2 getCategoryCount()

  Returned: Always
#    Returns: 'xs:int'

=cut

sub getCategoryCount {
  my $self = shift;
  return $self->{'CategoryCount'};
}


=head2 setSuggestedCategoryArray()

Contains the categories that contain listings
that match the query string in the request. The array
can have up to 10 categories. Not returned if no categories match
the query in the request.

#    Argument: 'ns:SuggestedCategoryArrayType'

=cut

sub setSuggestedCategoryArray {
  my $self = shift;
  $self->{'SuggestedCategoryArray'} = shift
}

=head2 getSuggestedCategoryArray()

  Returned: Conditionally
#    Returns: 'ns:SuggestedCategoryArrayType'

=cut

sub getSuggestedCategoryArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'SuggestedCategoryArray'
		,'eBay::API::XML::DataType::SuggestedCategoryArrayType');
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

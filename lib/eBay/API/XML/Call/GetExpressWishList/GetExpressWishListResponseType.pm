#!/usr/bin/perl

package eBay::API::XML::Call::GetExpressWishList::GetExpressWishListResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetExpressWishListResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 07/07/2008 17:42
# API Release Number: ... 571
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetExpressWishList::GetExpressWishListResponseType

=head1 DESCRIPTION

Returns a list of eBay Express wish lists for one or more users.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetExpressWishList::GetExpressWishListResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::PaginationResultType;
use eBay::API::XML::DataType::WishListType;


my @gaProperties = ( [ 'Pagination', 'ns:PaginationResultType', ''
	     ,'eBay::API::XML::DataType::PaginationResultType', '1' ]
	, [ 'WishList', 'ns:WishListType', '1'
	     ,'eBay::API::XML::DataType::WishListType', '1' ]
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



=head2 setPagination()

Child elements control the display pagination of the items and products in retrieved
wish lists.

#    Argument: 'ns:PaginationResultType'

=cut

sub setPagination {
  my $self = shift;
  $self->{'Pagination'} = shift
}

=head2 getPagination()

  Returned: Always
#    Returns: 'ns:PaginationResultType'

=cut

sub getPagination {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Pagination'
		,'eBay::API::XML::DataType::PaginationResultType');
}


=head2 setWishList()

Contains the contents and description of the requested wish list.

#    Argument: reference to an array  
                      of 'ns:WishListType'

=cut

sub setWishList {
  my $self = shift;
  $self->{'WishList'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getWishList()

  Returned: Always
#    Returns: reference to an array  
                      of 'ns:WishListType'

=cut

sub getWishList {
  my $self = shift;
  return $self->_getDataTypeArray('WishList');
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

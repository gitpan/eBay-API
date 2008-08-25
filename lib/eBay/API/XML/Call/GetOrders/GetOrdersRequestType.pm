#!/usr/bin/perl

package eBay::API::XML::Call::GetOrders::GetOrdersRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetOrdersRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetOrders::GetOrdersRequestType

=head1 DESCRIPTION

Retrieves all of the orders for which the user is a participant (as
either buyer or seller) that meet the criteria specified in the request.
<br>
<br>An order is a combination of two or more transactions.
<br>
<br>There are two mutually exclusive sets of filtering input arguments
that can be used to query for orders. The first set is based on specific
order IDs (one or more order IDs are passed in the call). The second set
is a combination of date range, order role, and order status. If one set
of filtering arguments is used, the arguments for the other set should not
be specified in the same call. If a given call to GetOrders includes both
criteria sets, the query based on order IDs is used, and the criteria for
date range/order status/order role is ignored.
This call can also be used to retrieve unshipped Half.com orders (i.e.,
orders that the seller has received but has not yet processed).



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetOrders::GetOrdersRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::OrderIDArrayType;
use eBay::API::XML::DataType::PaginationType;
use eBay::API::XML::DataType::Enum::ListingTypeCodeType;
use eBay::API::XML::DataType::Enum::OrderStatusCodeType;
use eBay::API::XML::DataType::Enum::TradingRoleCodeType;


my @gaProperties = ( [ 'CreateTimeFrom', 'xs:dateTime', '', '', '' ]
	, [ 'CreateTimeTo', 'xs:dateTime', '', '', '' ]
	, [ 'ListingType', 'ns:ListingTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ListingTypeCodeType', '' ]
	, [ 'OrderIDArray', 'ns:OrderIDArrayType', ''
	     ,'eBay::API::XML::DataType::OrderIDArrayType', '1' ]
	, [ 'OrderRole', 'ns:TradingRoleCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::TradingRoleCodeType', '' ]
	, [ 'OrderStatus', 'ns:OrderStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::OrderStatusCodeType', '' ]
	, [ 'Pagination', 'ns:PaginationType', ''
	     ,'eBay::API::XML::DataType::PaginationType', '1' ]
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



=head2 setCreateTimeFrom()

The starting date of the date range for the orders to retrieve.
Also applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setCreateTimeFrom {
  my $self = shift;
  $self->{'CreateTimeFrom'} = shift
}

=head2 getCreateTimeFrom()

#    Returns: 'xs:dateTime'

=cut

sub getCreateTimeFrom {
  my $self = shift;
  return $self->{'CreateTimeFrom'};
}


=head2 setCreateTimeTo()

The ending date of the date range for the orders to retrieve.
Also applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut

sub setCreateTimeTo {
  my $self = shift;
  $self->{'CreateTimeTo'} = shift
}

=head2 getCreateTimeTo()

#    Returns: 'xs:dateTime'

=cut

sub getCreateTimeTo {
  my $self = shift;
  return $self->{'CreateTimeTo'};
}


=head2 setListingType()

To retrieve Half.com orders, specify Half. To retrieve eBay
orders, don't specify this field at all.
(This field can't be used as a listing type filter on eBay.com.
If not provided or if any value other than Half is specified,
this field has no useful effect and the call retrieves
eBay orders of all types.
Also, you can't retrieve both eBay and Half.com orders
in the same response.)

  RequiredInput: Conditionally
  OnlyTheseValues: Half
#    Argument: 'ns:ListingTypeCodeType'

=cut

sub setListingType {
  my $self = shift;
  $self->{'ListingType'} = shift
}

=head2 getListingType()

#    Returns: 'ns:ListingTypeCodeType'

=cut

sub getListingType {
  my $self = shift;
  return $self->{'ListingType'};
}


=head2 setOrderIDArray()

A set of orders to retrieve.
Does not retrieve Express orders, even when the explicit Express OrderID found on the eBay Express site is included in the request.
Not applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'ns:OrderIDArrayType'

=cut

sub setOrderIDArray {
  my $self = shift;
  $self->{'OrderIDArray'} = shift
}

=head2 getOrderIDArray()

#    Returns: 'ns:OrderIDArrayType'

=cut

sub getOrderIDArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'OrderIDArray'
		,'eBay::API::XML::DataType::OrderIDArrayType');
}


=head2 setOrderRole()

Filters orders based on the role of the user making the
GetOrders request.
Not applicable to Half.com.

  RequiredInput: Conditionally
#    Argument: 'ns:TradingRoleCodeType'

=cut

sub setOrderRole {
  my $self = shift;
  $self->{'OrderRole'} = shift
}

=head2 getOrderRole()

#    Returns: 'ns:TradingRoleCodeType'

=cut

sub getOrderRole {
  my $self = shift;
  return $self->{'OrderRole'};
}


=head2 setOrderStatus()

Filters the returned orders by order status (Active or Completed).
To retrieve orders with a status of Inactive or Cancelled, you must
specify the order IDs (OrderIDArray.OrderID). When you specify
OrderIDArray.OrderID, no other filters are used.
<br><br>
For Half.com, you can get some, but not all orders.
Orders on Half.com have different order status values from
eBay orders. When you set ListingType to Half, set OrderStatus
to Shipped. Otherwise, GetOrders may return incomplete information
or have indeterminate results.

  RequiredInput: Conditionally
  OnlyTheseValues: Active, Completed, Shipped
#    Argument: 'ns:OrderStatusCodeType'

=cut

sub setOrderStatus {
  my $self = shift;
  $self->{'OrderStatus'} = shift
}

=head2 getOrderStatus()

#    Returns: 'ns:OrderStatusCodeType'

=cut

sub getOrderStatus {
  my $self = shift;
  return $self->{'OrderStatus'};
}


=head2 setPagination()

Not applicable to eBay.com. Applicable to Half.com. If many orders are available,
you may need to call GetOrders multiple times to retrieve all the data.
Each result set is returned as a page of entries.
Use this Pagination information to indicate the maximum number of entries to
retrieve per page (i.e., per call), the page number to retrieve, and other data.

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

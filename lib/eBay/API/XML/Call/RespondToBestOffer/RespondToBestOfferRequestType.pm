#!/usr/bin/perl

package eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RespondToBestOfferRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferRequestType

=head1 DESCRIPTION

Enables the seller of a Best Offer item to accept, decline, or counter offers
made by bidders. Best offers can be declined in bulk, using the same message
from the seller to the bidders of all rejected offers.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::RespondToBestOffer::RespondToBestOfferRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::AmountType;
use eBay::API::XML::DataType::BestOfferIDType;
use eBay::API::XML::DataType::ItemIDType;
use eBay::API::XML::DataType::Enum::BestOfferActionCodeType;


my @gaProperties = ( [ 'Action', 'ns:BestOfferActionCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::BestOfferActionCodeType', '' ]
	, [ 'BestOfferID', 'ns:BestOfferIDType', '1'
	     ,'eBay::API::XML::DataType::BestOfferIDType', '1' ]
	, [ 'CounterOfferPrice', 'ns:AmountType', ''
	     ,'eBay::API::XML::DataType::AmountType', '1' ]
	, [ 'CounterOfferQuantity', 'xs:int', '', '', '' ]
	, [ 'ItemID', 'ns:ItemIDType', ''
	     ,'eBay::API::XML::DataType::ItemIDType', '1' ]
	, [ 'SellerResponse', 'xs:string', '', '', '' ]
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



=head2 setAction()

The action taken on the best offer by the seller (e.g.,
Accept, Decline, or Counter). Bulk Accept and Bulk
Counter are not supported. That is, you cannot accept or
counter multiple offers in a single call. You can,
however, decline multiple offers in a single call.

  RequiredInput: Yes
#    Argument: 'ns:BestOfferActionCodeType'

=cut

sub setAction {
  my $self = shift;
  $self->{'Action'} = shift
}

=head2 getAction()

#    Returns: 'ns:BestOfferActionCodeType'

=cut

sub getAction {
  my $self = shift;
  return $self->{'Action'};
}


=head2 setBestOfferID()

The ID of a Best Offer for the item.

  RequiredInput: Yes
#    Argument: reference to an array  
                      of 'ns:BestOfferIDType'

=cut

sub setBestOfferID {
  my $self = shift;
  $self->{'BestOfferID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getBestOfferID()

#    Returns: reference to an array  
                      of 'ns:BestOfferIDType'

=cut

sub getBestOfferID {
  my $self = shift;
  return $self->_getDataTypeArray('BestOfferID');
}


=head2 setCounterOfferPrice()

The counter offer price. When Action is set to Counter,
you must specify the amount for the counteroffer with
CounterOfferPrice. The value of CounterOfferPrice cannot
exceed the Buy It Now price for a single quantity item.
The value of CounterOfferPrice may exceed the Buy It Now
price if the value for CounterOfferQuantity is greater
than 1.

  RequiredInput: Conditionally
#    Argument: 'ns:AmountType'

=cut

sub setCounterOfferPrice {
  my $self = shift;
  $self->{'CounterOfferPrice'} = shift
}

=head2 getCounterOfferPrice()

#    Returns: 'ns:AmountType'

=cut

sub getCounterOfferPrice {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CounterOfferPrice'
		,'eBay::API::XML::DataType::AmountType');
}


=head2 setCounterOfferQuantity()

The counter offer quantity. When Action is set to
Counter you must specify the quantity of items for the
counteroffer with CounterOfferQuantity.

  RequiredInput: Conditionally
#    Argument: 'xs:int'

=cut

sub setCounterOfferQuantity {
  my $self = shift;
  $self->{'CounterOfferQuantity'} = shift
}

=head2 getCounterOfferQuantity()

#    Returns: 'xs:int'

=cut

sub getCounterOfferQuantity {
  my $self = shift;
  return $self->{'CounterOfferQuantity'};
}


=head2 setItemID()

Specifies the item for which the BestOffer data is to be returned.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut

sub setItemID {
  my $self = shift;
  $self->{'ItemID'} = shift
}

=head2 getItemID()

#    Returns: 'ns:ItemIDType'

=cut

sub getItemID {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ItemID'
		,'eBay::API::XML::DataType::ItemIDType');
}


=head2 setSellerResponse()

A comment from the seller to the buyer.

MaxLength: 250

  RequiredInput: Conditionally
#    Argument: 'xs:string'

=cut

sub setSellerResponse {
  my $self = shift;
  $self->{'SellerResponse'} = shift
}

=head2 getSellerResponse()

#    Returns: 'xs:string'

=cut

sub getSellerResponse {
  my $self = shift;
  return $self->{'SellerResponse'};
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

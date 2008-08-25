#!/usr/bin/perl

package eBay::API::XML::DataType::ReviseStatusType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ReviseStatusType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ReviseStatusType

=head1 DESCRIPTION

Contains data indicating whether an item has been revised since the
listing became active and, if so, which among a subset of properties
have been changed by the revision.
Output only.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ReviseStatusType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BuyItNowAdded', 'xs:boolean', '', '', '' ]
	, [ 'BuyItNowLowered', 'xs:boolean', '', '', '' ]
	, [ 'ItemRevised', 'xs:boolean', '', '', '' ]
	, [ 'ReserveLowered', 'xs:boolean', '', '', '' ]
	, [ 'ReserveRemoved', 'xs:boolean', '', '', '' ]
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



=head2 setBuyItNowAdded()

If true, indicates that a Buy It Now Price was added for the item.
Only applicable to US eBay Motors items.
Output only.

#    Argument: 'xs:boolean'

=cut

sub setBuyItNowAdded {
  my $self = shift;
  $self->{'BuyItNowAdded'} = shift
}

=head2 isBuyItNowAdded()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isBuyItNowAdded {
  my $self = shift;
  return $self->{'BuyItNowAdded'};
}


=head2 setBuyItNowLowered()

If true, indicates that the item's Buy It Now price was lowered.
Only applicable to US eBay Motors items.
Output only.

#    Argument: 'xs:boolean'

=cut

sub setBuyItNowLowered {
  my $self = shift;
  $self->{'BuyItNowLowered'} = shift
}

=head2 isBuyItNowLowered()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isBuyItNowLowered {
  my $self = shift;
  return $self->{'BuyItNowLowered'};
}


=head2 setItemRevised()

If true, indicates the item was revised since the listing became
active.
Output only.

#    Argument: 'xs:boolean'

=cut

sub setItemRevised {
  my $self = shift;
  $self->{'ItemRevised'} = shift
}

=head2 isItemRevised()

  Calls: GetBidderList
  Returned: Always

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetSellerList
  Returned: Conditionally
  Details: DetailLevel: ItemReturnDescription, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isItemRevised {
  my $self = shift;
  return $self->{'ItemRevised'};
}


=head2 setReserveLowered()

If true, indicates that the reserve price was lowered for
the item. Only applicable to US eBay Motors items.
Output only.

#    Argument: 'xs:boolean'

=cut

sub setReserveLowered {
  my $self = shift;
  $self->{'ReserveLowered'} = shift
}

=head2 isReserveLowered()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isReserveLowered {
  my $self = shift;
  return $self->{'ReserveLowered'};
}


=head2 setReserveRemoved()

If true, indicates that the reserve price was removed
from the item. Only applicable to US eBay Motors items.
Output only.

#    Argument: 'xs:boolean'

=cut

sub setReserveRemoved {
  my $self = shift;
  $self->{'ReserveRemoved'} = shift
}

=head2 isReserveRemoved()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Always
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isReserveRemoved {
  my $self = shift;
  return $self->{'ReserveRemoved'};
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
#!/usr/bin/perl

package eBay::API::XML::DataType::ExpressItemRequirementsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExpressItemRequirementsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExpressItemRequirementsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExpressItemRequirementsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'CombinedShippingDiscount', 'xs:boolean', '', '', '' ]
	, [ 'DomesticShippingCost', 'xs:boolean', '', '', '' ]
	, [ 'EligibleCheckout', 'xs:boolean', '', '', '' ]
	, [ 'EligibleItemCondition', 'xs:boolean', '', '', '' ]
	, [ 'EligiblePayPalAccount', 'xs:boolean', '', '', '' ]
	, [ 'EligibleReturnPolicy', 'xs:boolean', '', '', '' ]
	, [ 'ExpressApproved', 'xs:boolean', '', '', '' ]
	, [ 'ExpressEligibleListingType', 'xs:boolean', '', '', '' ]
	, [ 'ExpressEnabledCategory', 'xs:boolean', '', '', '' ]
	, [ 'ExpressOptOut', 'xs:boolean', '', '', '' ]
	, [ 'NoCharity', 'xs:boolean', '', '', '' ]
	, [ 'NoPreapprovedBidderList', 'xs:boolean', '', '', '' ]
	, [ 'PayPalAccountAcceptsUnconfirmedAddress', 'xs:boolean', '', '', '' ]
	, [ 'Picture', 'xs:boolean', '', '', '' ]
	, [ 'PriceAboveMinimum', 'xs:boolean', '', '', '' ]
	, [ 'PriceBelowMaximum', 'xs:boolean', '', '', '' ]
	, [ 'SellerExpressEligible', 'xs:boolean', '', '', '' ]
	, [ 'ShipFromEligibleCountry', 'xs:boolean', '', '', '' ]
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



=head2 setCombinedShippingDiscount()

If true, the item offers a combined shipping discount.
Only returned if the Express site has an item-level
combined shipping discount requirement.
(Some Express sites only require you to accept combined payments
at the seller level, in your My eBay preferences.)

#    Argument: 'xs:boolean'

=cut

sub setCombinedShippingDiscount {
  my $self = shift;
  $self->{'CombinedShippingDiscount'} = shift
}

=head2 isCombinedShippingDiscount()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isCombinedShippingDiscount {
  my $self = shift;
  return $self->{'CombinedShippingDiscount'};
}


=head2 setDomesticShippingCost()

If true, domestic shipping costs are specified for the item.
If false, they aren't specified (and the item is therefore ineligible).

#    Argument: 'xs:boolean'

=cut

sub setDomesticShippingCost {
  my $self = shift;
  $self->{'DomesticShippingCost'} = shift
}

=head2 isDomesticShippingCost()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isDomesticShippingCost {
  my $self = shift;
  return $self->{'DomesticShippingCost'};
}


=head2 setEligibleCheckout()

If true, indicates the item meets the site's eBay Express
requirements for checkout. (A common case when this could be false
would be when ThirdPartyCheckout is true but
ThirdPartyCheckoutIntegration is false.)

#    Argument: 'xs:boolean'

=cut

sub setEligibleCheckout {
  my $self = shift;
  $self->{'EligibleCheckout'} = shift
}

=head2 isEligibleCheckout()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isEligibleCheckout {
  my $self = shift;
  return $self->{'EligibleCheckout'};
}


=head2 setEligibleItemCondition()

If true, the item specifies an eligible item condition.
If false, the item doesn't specify an eligible item condition.
Only returned if the category requires an item condition for Express.
Some categories waive the item condition requirement.

#    Argument: 'xs:boolean'

=cut

sub setEligibleItemCondition {
  my $self = shift;
  $self->{'EligibleItemCondition'} = shift
}

=head2 isEligibleItemCondition()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isEligibleItemCondition {
  my $self = shift;
  return $self->{'EligibleItemCondition'};
}


=head2 setEligiblePayPalAccount()

If true, the seller has an Express-eligible PayPal account.

#    Argument: 'xs:boolean'

=cut

sub setEligiblePayPalAccount {
  my $self = shift;
  $self->{'EligiblePayPalAccount'} = shift
}

=head2 isEligiblePayPalAccount()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isEligiblePayPalAccount {
  my $self = shift;
  return $self->{'EligiblePayPalAccount'};
}


=head2 setEligibleReturnPolicy()

If true, the item is covered by a return policy that meets
the site's requirements for Express.
Only returned for Express Germany. (A return policy is optional for
Express US.)

#    Argument: 'xs:boolean'

=cut

sub setEligibleReturnPolicy {
  my $self = shift;
  $self->{'EligibleReturnPolicy'} = shift
}

=head2 isEligibleReturnPolicy()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isEligibleReturnPolicy {
  my $self = shift;
  return $self->{'EligibleReturnPolicy'};
}


=head2 setExpressApproved()

If true, indicates eBay has marked the item as eligible for
eBay Express based on direct evaluation. Only returned if true,
and no other settings are returned in this case.

#    Argument: 'xs:boolean'

=cut

sub setExpressApproved {
  my $self = shift;
  $self->{'ExpressApproved'} = shift
}

=head2 isExpressApproved()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isExpressApproved {
  my $self = shift;
  return $self->{'ExpressApproved'};
}


=head2 setExpressEligibleListingType()

If true, indicates the item listing format is eligible for Express.
If false, the listing format is ineligible (and the item is therefore
ineligible).

#    Argument: 'xs:boolean'

=cut

sub setExpressEligibleListingType {
  my $self = shift;
  $self->{'ExpressEligibleListingType'} = shift
}

=head2 isExpressEligibleListingType()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isExpressEligibleListingType {
  my $self = shift;
  return $self->{'ExpressEligibleListingType'};
}


=head2 setExpressEnabledCategory()

If true, the item's primary category is enabled for Express.
If false, the primary category is not enabled for Express
(and the item is therefore ineligible).

#    Argument: 'xs:boolean'

=cut

sub setExpressEnabledCategory {
  my $self = shift;
  $self->{'ExpressEnabledCategory'} = shift
}

=head2 isExpressEnabledCategory()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isExpressEnabledCategory {
  my $self = shift;
  return $self->{'ExpressEnabledCategory'};
}


=head2 setExpressOptOut()

If true, this field indicates the item was opted out of Express;
that is, ExpressOptOut was true in the listing request.
Only returned if true, and no other settings are returned in this case.

#    Argument: 'xs:boolean'

=cut

sub setExpressOptOut {
  my $self = shift;
  $self->{'ExpressOptOut'} = shift
}

=head2 isExpressOptOut()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isExpressOptOut {
  my $self = shift;
  return $self->{'ExpressOptOut'};
}


=head2 setNoCharity()

If true, the item is not an eBay Giving Works item.
Only returned if the site does not allow charity listings on Express.
(In other words, if the site excludes charity listings from Express,
then NoCharity=true means the item meets the eligibility requirement.)

#    Argument: 'xs:boolean'

=cut

sub setNoCharity {
  my $self = shift;
  $self->{'NoCharity'} = shift
}

=head2 isNoCharity()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isNoCharity {
  my $self = shift;
  return $self->{'NoCharity'};
}


=head2 setNoPreapprovedBidderList()

If true, the item has no pre-approved bidder list.

#    Argument: 'xs:boolean'

=cut

sub setNoPreapprovedBidderList {
  my $self = shift;
  $self->{'NoPreapprovedBidderList'} = shift
}

=head2 isNoPreapprovedBidderList()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isNoPreapprovedBidderList {
  my $self = shift;
  return $self->{'NoPreapprovedBidderList'};
}


=head2 setPayPalAccountAcceptsUnconfirmedAddress()

If true, the PayPal account for the item accepts payments
from a buyer with an unconfirmed address. If false, the
account blocks unconfirmed addresses (and the item is therefore
ineligible).

#    Argument: 'xs:boolean'

=cut

sub setPayPalAccountAcceptsUnconfirmedAddress {
  my $self = shift;
  $self->{'PayPalAccountAcceptsUnconfirmedAddress'} = shift
}

=head2 isPayPalAccountAcceptsUnconfirmedAddress()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isPayPalAccountAcceptsUnconfirmedAddress {
  my $self = shift;
  return $self->{'PayPalAccountAcceptsUnconfirmedAddress'};
}


=head2 setPicture()

If true, the item includes a picture.
If false, the item doesn't include a picture.
Only returned if the category requires a picture for Express.
Some categories waive the picture requirement.

#    Argument: 'xs:boolean'

=cut

sub setPicture {
  my $self = shift;
  $self->{'Picture'} = shift
}

=head2 isPicture()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isPicture {
  my $self = shift;
  return $self->{'Picture'};
}


=head2 setPriceAboveMinimum()

If true, the price of the item is above the minimum price allowed on
Express. That is, the StartPrice, BuyItNowPrice,
or CurrentPrice is above the minimum.)

#    Argument: 'xs:boolean'

=cut

sub setPriceAboveMinimum {
  my $self = shift;
  $self->{'PriceAboveMinimum'} = shift
}

=head2 isPriceAboveMinimum()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isPriceAboveMinimum {
  my $self = shift;
  return $self->{'PriceAboveMinimum'};
}


=head2 setPriceBelowMaximum()

If true, the price of the item is below the maximum price
allowed on Express. (That is, the StartPrice, BuyItNowPrice,
or CurrentPrice is below the maximum.)

#    Argument: 'xs:boolean'

=cut

sub setPriceBelowMaximum {
  my $self = shift;
  $self->{'PriceBelowMaximum'} = shift
}

=head2 isPriceBelowMaximum()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isPriceBelowMaximum {
  my $self = shift;
  return $self->{'PriceBelowMaximum'};
}


=head2 setSellerExpressEligible()

If false, indicates that an item is not Express-eligible because
the seller is not Express-eligible. Only returned if false,
and no other settings are returned in this case.

#    Argument: 'xs:boolean'

=cut

sub setSellerExpressEligible {
  my $self = shift;
  $self->{'SellerExpressEligible'} = shift
}

=head2 isSellerExpressEligible()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isSellerExpressEligible {
  my $self = shift;
  return $self->{'SellerExpressEligible'};
}


=head2 setShipFromEligibleCountry()

If true, the country you specified for the item meets the
specified site's shipping origin requirements for Express.

#    Argument: 'xs:boolean'

=cut

sub setShipFromEligibleCountry {
  my $self = shift;
  $self->{'ShipFromEligibleCountry'} = shift
}

=head2 isShipFromEligibleCountry()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: VerifyAddItem
  Returned: Conditionally

#    Returns: 'xs:boolean'

=cut

sub isShipFromEligibleCountry {
  my $self = shift;
  return $self->{'ShipFromEligibleCountry'};
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

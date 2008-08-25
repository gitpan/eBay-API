#!/usr/bin/perl

package eBay::API::XML::DataType::ExpressSellerRequirementsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ExpressSellerRequirementsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::ExpressSellerRequirementsType

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::ExpressSellerRequirementsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::FeedbackRequirementsType;


my @gaProperties = ( [ 'BusinessSeller', 'xs:boolean', '', '', '' ]
	, [ 'CombinedPaymentsAccepted', 'xs:boolean', '', '', '' ]
	, [ 'EligiblePayPalAccount', 'xs:boolean', '', '', '' ]
	, [ 'ExpressApproved', 'xs:boolean', '', '', '' ]
	, [ 'ExpressSellingPreference', 'xs:boolean', '', '', '' ]
	, [ 'FeedbackAsSellerScore', 'ns:FeedbackRequirementsType', ''
	     ,'eBay::API::XML::DataType::FeedbackRequirementsType', '1' ]
	, [ 'FeedbackPublic', 'xs:boolean', '', '', '' ]
	, [ 'FeedbackScore', 'ns:FeedbackRequirementsType', ''
	     ,'eBay::API::XML::DataType::FeedbackRequirementsType', '1' ]
	, [ 'GoodStanding', 'xs:boolean', '', '', '' ]
	, [ 'PayPalAccountAcceptsUnconfirmedAddress', 'xs:boolean', '', '', '' ]
	, [ 'PositiveFeedbackAsSellerPercent', 'ns:FeedbackRequirementsType', ''
	     ,'eBay::API::XML::DataType::FeedbackRequirementsType', '1' ]
	, [ 'PositiveFeedbackPercent', 'ns:FeedbackRequirementsType', ''
	     ,'eBay::API::XML::DataType::FeedbackRequirementsType', '1' ]
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



=head2 setBusinessSeller()

If true, the seller is a registered business seller.
Only returned for Express Germany.
Starting in late April, this value will no longer work, regardless of the
API version you are using.

#    Argument: 'xs:boolean'

=cut

sub setBusinessSeller {
  my $self = shift;
  $self->{'BusinessSeller'} = shift
}

=head2 isBusinessSeller()

#    Returns: 'xs:boolean'

=cut

sub isBusinessSeller {
  my $self = shift;
  return $self->{'BusinessSeller'};
}


=head2 setCombinedPaymentsAccepted()

If true, the seller accepts combined payments. If false, the seller
doesn't accept combined payments (and the seller is therefore
ineligible for Express, if the site requires this preference).

#    Argument: 'xs:boolean'

=cut

sub setCombinedPaymentsAccepted {
  my $self = shift;
  $self->{'CombinedPaymentsAccepted'} = shift
}

=head2 isCombinedPaymentsAccepted()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isCombinedPaymentsAccepted {
  my $self = shift;
  return $self->{'CombinedPaymentsAccepted'};
}


=head2 setEligiblePayPalAccount()

If true, the seller has an eligible PayPal account for Express.
Only returned if the site assesses this requirement at the seller level.

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

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isEligiblePayPalAccount {
  my $self = shift;
  return $self->{'EligiblePayPalAccount'};
}


=head2 setExpressApproved()

If true, indicates eBay has marked the seller as eligible for
eBay Express based on direct evaluation. Only returned if true,
and no other seller requirement settings are returned in this case.
For example, on the eBay Germany site, sellers need to fill out
an application to become eligible to list on Express Germany.
If they are approved, eBay sets ExpressApproved to true and no other
seller requirement settings are relevant.
<p></p>
<span class="tablenote"><b>Note:</b>
At the end of April 2008, UK and Germany eBay Express will be shutdown. No
users will be eligible to list on these sites. All users previously registered
on UK and Germany Express will have their registered status revoked. Any
Express only items listed on these sites will be ended and credited the full
insertion fee to their sellers. Please refer to the respective Express sites
for more information.
</span>

#    Argument: 'xs:boolean'

=cut

sub setExpressApproved {
  my $self = shift;
  $self->{'ExpressApproved'} = shift
}

=head2 isExpressApproved()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isExpressApproved {
  my $self = shift;
  return $self->{'ExpressApproved'};
}


=head2 setExpressSellingPreference()

If true, the seller's preferences in My eBay are set
to include listings on eBay Express.
If false, the seller prefers not to include listings
on Express, so the seller is therefore ineligible for Express
(and no other seller requirement settings are returned in this case).

SeeLink: URL: io_GetUserPreferences.html#Response.ExpressPreferences.ExpressSellingPreference
Title: (GetUserPreferences) ExpressPreferences.ExpressSellingPreference

#    Argument: 'xs:boolean'

=cut

sub setExpressSellingPreference {
  my $self = shift;
  $self->{'ExpressSellingPreference'} = shift
}

=head2 isExpressSellingPreference()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isExpressSellingPreference {
  my $self = shift;
  return $self->{'ExpressSellingPreference'};
}


=head2 setFeedbackAsSellerScore()

If true, indicates that the seller meets the Express site's
minimum feedback requirement (if any) for transactions as a seller
(not a buyer).

#    Argument: 'ns:FeedbackRequirementsType'

=cut

sub setFeedbackAsSellerScore {
  my $self = shift;
  $self->{'FeedbackAsSellerScore'} = shift
}

=head2 getFeedbackAsSellerScore()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:FeedbackRequirementsType'

=cut

sub getFeedbackAsSellerScore {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FeedbackAsSellerScore'
		,'eBay::API::XML::DataType::FeedbackRequirementsType');
}


=head2 setFeedbackPublic()

If true, the seller's feedback profile is public.
If false, the seller's feedback details are private; that is,
User.FeedbackPrivate is true (and the seller is therefore
ineligible).

#    Argument: 'xs:boolean'

=cut

sub setFeedbackPublic {
  my $self = shift;
  $self->{'FeedbackPublic'} = shift
}

=head2 isFeedbackPublic()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isFeedbackPublic {
  my $self = shift;
  return $self->{'FeedbackPublic'};
}


=head2 setFeedbackScore()

If true, indicates that the seller meets the site's minimum total
feedback requirement for Express.

#    Argument: 'ns:FeedbackRequirementsType'

=cut

sub setFeedbackScore {
  my $self = shift;
  $self->{'FeedbackScore'} = shift
}

=head2 getFeedbackScore()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:FeedbackRequirementsType'

=cut

sub getFeedbackScore {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FeedbackScore'
		,'eBay::API::XML::DataType::FeedbackRequirementsType');
}


=head2 setGoodStanding()

If true, the user has a seller account in good standing.

#    Argument: 'xs:boolean'

=cut

sub setGoodStanding {
  my $self = shift;
  $self->{'GoodStanding'} = shift
}

=head2 isGoodStanding()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isGoodStanding {
  my $self = shift;
  return $self->{'GoodStanding'};
}


=head2 setPayPalAccountAcceptsUnconfirmedAddress()

If true, the seller has a PayPal account that accepts
a payment from a buyer with an unconfirmed address.
Only returned if the site assesses this requirement at the seller level.

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

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isPayPalAccountAcceptsUnconfirmedAddress {
  my $self = shift;
  return $self->{'PayPalAccountAcceptsUnconfirmedAddress'};
}


=head2 setPositiveFeedbackAsSellerPercent()

If true, indicates that the seller meets the Express site's
minimum positive feedback requirement (if any) for transactions
as a seller (not a buyer).

#    Argument: 'ns:FeedbackRequirementsType'

=cut

sub setPositiveFeedbackAsSellerPercent {
  my $self = shift;
  $self->{'PositiveFeedbackAsSellerPercent'} = shift
}

=head2 getPositiveFeedbackAsSellerPercent()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:FeedbackRequirementsType'

=cut

sub getPositiveFeedbackAsSellerPercent {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PositiveFeedbackAsSellerPercent'
		,'eBay::API::XML::DataType::FeedbackRequirementsType');
}


=head2 setPositiveFeedbackPercent()

If true, indicates that the seller meets the site's minimum
total positive feedback requirement for Express.

#    Argument: 'ns:FeedbackRequirementsType'

=cut

sub setPositiveFeedbackPercent {
  my $self = shift;
  $self->{'PositiveFeedbackPercent'} = shift
}

=head2 getPositiveFeedbackPercent()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:FeedbackRequirementsType'

=cut

sub getPositiveFeedbackPercent {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PositiveFeedbackPercent'
		,'eBay::API::XML::DataType::FeedbackRequirementsType');
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

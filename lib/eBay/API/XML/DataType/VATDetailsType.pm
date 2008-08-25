#!/usr/bin/perl

package eBay::API::XML::DataType::VATDetailsType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VATDetailsType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::VATDetailsType

=head1 DESCRIPTION

Container for eBay's Business User features. A business seller can choose
to offer an item exclusively to bidders and buyers that also represent businesses.
Only applicable when the item is listed in a B2B-enabled category.
Currently, the eBay Germany (DE), Austria (AT), and Switzerland (CH) sites support
B2B business features.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::VATDetailsType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'BusinessSeller', 'xs:boolean', '', '', '' ]
	, [ 'RestrictedToBusiness', 'xs:boolean', '', '', '' ]
	, [ 'VATID', 'xs:string', '', '', '' ]
	, [ 'VATPercent', 'xs:float', '', '', '' ]
	, [ 'VATSite', 'xs:string', '', '', '' ]
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

If true, this indicates that the seller is a business user
and intends to use listing features that are offered to
business users only. Applicable only to business sellers
residing in Germany, Austria, or Switzerland who are listing in
a B2B VAT- enabled category on the eBay Germany (DE), Austria
(AT), or Switzerland (CH) sites. The seller must have a valid
VAT ID registered with eBay. This must be set to true if
RestrictedToBusiness is true. It has no effect (and it's not returned)
if RestrictedToBusiness is false. If an item was not qualified as a
business item when originally listed, but meets the conditions for
business items when the item is revised or relisted, the seller can
convert the item to a business item by specifying the appropriate
VAT details. See the eBay Web Services guide for more information and additional rules.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:boolean'

=cut

sub setBusinessSeller {
  my $self = shift;
  $self->{'BusinessSeller'} = shift
}

=head2 isBusinessSeller()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isBusinessSeller {
  my $self = shift;
  return $self->{'BusinessSeller'};
}


=head2 setRestrictedToBusiness()

If true, this indicates that the seller elects to offer the
item exclusively to business users. If false (or not returned),
this indicates that the seller elects to offer the item to all users.
Applicable only to business sellers residing in Germany,
Austria, or Switzerland who are listing in a B2B VAT-enabled
category on the eBay Germany (DE), Austria (AT), or Switzerland
(CH) sites. If this argument is true, the seller must have a
valid VAT-ID registered with eBay, and BusinessSeller must also
be true.

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: No

#    Argument: 'xs:boolean'

=cut

sub setRestrictedToBusiness {
  my $self = shift;
  $self->{'RestrictedToBusiness'} = shift
}

=head2 isRestrictedToBusiness()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isRestrictedToBusiness {
  my $self = shift;
  return $self->{'RestrictedToBusiness'};
}


=head2 setVATID()

Displays the VatSite Id of the seller (in a business 
card format) as part of the data returned in the 
GetItem call if the seller's SellerBusinessCodeType 
is set to 'Commercial'.

#    Argument: 'xs:string'

=cut

sub setVATID {
  my $self = shift;
  $self->{'VATID'} = shift
}

=head2 getVATID()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:string'

=cut

sub getVATID {
  my $self = shift;
  return $self->{'VATID'};
}


=head2 setVATPercent()

VAT rate for the item, if any. When the VATPercent is specified, the
item's VAT information appears on the item's listing page. In
addition, the seller can choose to print an invoice that
includes the item's net price, VAT percent, VAT amount, and
total price. Since VAT rates vary
depending on the item and on the user's country of residence, a
seller is responsible for entering the correct VAT rate; it is
not calculated by eBay. To specify a VATPercent, a seller must
have a VAT-ID registered with eBay and must be listing the item on a
VAT-enabled site. Max applicable length is 6 characters,
including the decimal (e.g., 12.345). The scale is 3 decimal places.
(If you pass in 12.3456, eBay may round up the value to 12.346.)
Note: The View Item page may display the precision to 2 decimal places
with no trailing zeros. However, the full value you send in is stored.

Max: 30
Min: 0
MaxLength: 6

  Calls: AddItem
         GetItemRecommendations
         RelistItem
         ReviseItem
         VerifyAddItem
  RequiredInput: Conditionally

#    Argument: 'xs:float'

=cut

sub setVATPercent {
  my $self = shift;
  $self->{'VATPercent'} = shift
}

=head2 getVATPercent()

  Calls: GetBidderList
  Returned: Conditionally

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:float'

=cut

sub getVATPercent {
  my $self = shift;
  return $self->{'VATPercent'};
}


=head2 setVATSite()

Displays the VatSite Id of the seller (in a business 
card format) as part of the data returned in the 
GetItem call if the seller's SellerBusinessCodeType 
is set to 'Commercial'.

#    Argument: 'xs:string'

=cut

sub setVATSite {
  my $self = shift;
  $self->{'VATSite'} = shift
}

=head2 getVATSite()

  Calls: GetItem
  Returned: Conditionally
  Details: DetailLevel: none, ItemReturnDescription, ItemReturnAttributes, ReturnAll

#    Returns: 'xs:string'

=cut

sub getVATSite {
  my $self = shift;
  return $self->{'VATSite'};
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

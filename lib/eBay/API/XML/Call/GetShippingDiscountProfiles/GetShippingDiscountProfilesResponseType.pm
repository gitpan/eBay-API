#!/usr/bin/perl

package eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetShippingDiscountProfilesResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesResponseType

=head1 DESCRIPTION

Response to call of GetShippingDiscountProfiles.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetShippingDiscountProfiles::GetShippingDiscountProfilesResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::CalculatedHandlingDiscountType;
use eBay::API::XML::DataType::CalculatedShippingDiscountType;
use eBay::API::XML::DataType::FlatShippingDiscountType;
use eBay::API::XML::DataType::PromotionalShippingDiscountDetailsType;
use eBay::API::XML::DataType::ShippingInsuranceType;
use eBay::API::XML::DataType::Enum::CombinedPaymentPeriodCodeType;
use eBay::API::XML::DataType::Enum::CurrencyCodeType;


my @gaProperties = ( [ 'CalculatedHandlingDiscount', 'ns:CalculatedHandlingDiscountType', ''
	     ,'eBay::API::XML::DataType::CalculatedHandlingDiscountType', '1' ]
	, [ 'CalculatedShippingDiscount', 'ns:CalculatedShippingDiscountType', ''
	     ,'eBay::API::XML::DataType::CalculatedShippingDiscountType', '1' ]
	, [ 'CombinedDuration', 'ns:CombinedPaymentPeriodCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CombinedPaymentPeriodCodeType', '' ]
	, [ 'CurrencyID', 'ns:CurrencyCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CurrencyCodeType', '' ]
	, [ 'FlatShippingDiscount', 'ns:FlatShippingDiscountType', ''
	     ,'eBay::API::XML::DataType::FlatShippingDiscountType', '1' ]
	, [ 'InternationalShippingInsurance', 'ns:ShippingInsuranceType', ''
	     ,'eBay::API::XML::DataType::ShippingInsuranceType', '1' ]
	, [ 'PromotionalShippingDiscount', 'xs:boolean', '', '', '' ]
	, [ 'PromotionalShippingDiscountDetails', 'ns:PromotionalShippingDiscountDetailsType', ''
	     ,'eBay::API::XML::DataType::PromotionalShippingDiscountDetailsType', '1' ]
	, [ 'ShippingInsurance', 'ns:ShippingInsuranceType', ''
	     ,'eBay::API::XML::DataType::ShippingInsuranceType', '1' ]
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



=head2 setCalculatedHandlingDiscount()

The data for the specific packaging/handling details for combined payment.
Returned only if it has been defined.

#    Argument: 'ns:CalculatedHandlingDiscountType'

=cut

sub setCalculatedHandlingDiscount {
  my $self = shift;
  $self->{'CalculatedHandlingDiscount'} = shift
}

=head2 getCalculatedHandlingDiscount()

  Returned: Conditionally
#    Returns: 'ns:CalculatedHandlingDiscountType'

=cut

sub getCalculatedHandlingDiscount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CalculatedHandlingDiscount'
		,'eBay::API::XML::DataType::CalculatedHandlingDiscountType');
}


=head2 setCalculatedShippingDiscount()

Details of an individual discount profile defined by the
user for calculated shipping--one for each profile defined by the user.
Empty if no shipping discount profiles were defined.

#    Argument: 'ns:CalculatedShippingDiscountType'

=cut

sub setCalculatedShippingDiscount {
  my $self = shift;
  $self->{'CalculatedShippingDiscount'} = shift
}

=head2 getCalculatedShippingDiscount()

  Returned: Always
#    Returns: 'ns:CalculatedShippingDiscountType'

=cut

sub getCalculatedShippingDiscount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'CalculatedShippingDiscount'
		,'eBay::API::XML::DataType::CalculatedShippingDiscountType');
}


=head2 setCombinedDuration()

Only those items purchased within CombinedDuration days of each other can
be combined into an order and benefit from any shipping discounts.

#    Argument: 'ns:CombinedPaymentPeriodCodeType'

=cut

sub setCombinedDuration {
  my $self = shift;
  $self->{'CombinedDuration'} = shift
}

=head2 getCombinedDuration()

  Returned: Always
#    Returns: 'ns:CombinedPaymentPeriodCodeType'

=cut

sub getCombinedDuration {
  my $self = shift;
  return $self->{'CombinedDuration'};
}


=head2 setCurrencyID()

The ID of the currency to be used for shipping cost discounts and
insurance for combined payment. A discount profile can only be associated
with a listing if the currency ID of the profile matches the currency ID
of the listing.

#    Argument: 'ns:CurrencyCodeType'

=cut

sub setCurrencyID {
  my $self = shift;
  $self->{'CurrencyID'} = shift
}

=head2 getCurrencyID()

  Returned: Always
#    Returns: 'ns:CurrencyCodeType'

=cut

sub getCurrencyID {
  my $self = shift;
  return $self->{'CurrencyID'};
}


=head2 setFlatShippingDiscount()

Details of an individual discount profile defined by the
user for flat rate shipping--one for each profile defined by the user.
Empty if no shipping discount profiles were defined.

#    Argument: 'ns:FlatShippingDiscountType'

=cut

sub setFlatShippingDiscount {
  my $self = shift;
  $self->{'FlatShippingDiscount'} = shift
}

=head2 getFlatShippingDiscount()

  Returned: Always
#    Returns: 'ns:FlatShippingDiscountType'

=cut

sub getFlatShippingDiscount {
  my $self = shift;
  return $self->_getDataTypeInstance( 'FlatShippingDiscount'
		,'eBay::API::XML::DataType::FlatShippingDiscountType');
}


=head2 setInternationalShippingInsurance()

The data for the international insurance for combined payment.
Returned only if it has been defined.

#    Argument: 'ns:ShippingInsuranceType'

=cut

sub setInternationalShippingInsurance {
  my $self = shift;
  $self->{'InternationalShippingInsurance'} = shift
}

=head2 getInternationalShippingInsurance()

  Returned: Conditionally
#    Returns: 'ns:ShippingInsuranceType'

=cut

sub getInternationalShippingInsurance {
  my $self = shift;
  return $self->_getDataTypeInstance( 'InternationalShippingInsurance'
		,'eBay::API::XML::DataType::ShippingInsuranceType');
}


=head2 setPromotionalShippingDiscount()

Indicates whether the user defined a promotional discount (the discount is active
as soon as it exists).

#    Argument: 'xs:boolean'

=cut

sub setPromotionalShippingDiscount {
  my $self = shift;
  $self->{'PromotionalShippingDiscount'} = shift
}

=head2 isPromotionalShippingDiscount()

  Returned: Always
#    Returns: 'xs:boolean'

=cut

sub isPromotionalShippingDiscount {
  my $self = shift;
  return $self->{'PromotionalShippingDiscount'};
}


=head2 setPromotionalShippingDiscountDetails()

The data for the specific promotional shipping discount.
Returned only if it has been defined.

#    Argument: 'ns:PromotionalShippingDiscountDetailsType'

=cut

sub setPromotionalShippingDiscountDetails {
  my $self = shift;
  $self->{'PromotionalShippingDiscountDetails'} = shift
}

=head2 getPromotionalShippingDiscountDetails()

  Returned: Conditionally
#    Returns: 'ns:PromotionalShippingDiscountDetailsType'

=cut

sub getPromotionalShippingDiscountDetails {
  my $self = shift;
  return $self->_getDataTypeInstance( 'PromotionalShippingDiscountDetails'
		,'eBay::API::XML::DataType::PromotionalShippingDiscountDetailsType');
}


=head2 setShippingInsurance()

The data for the domestic insurance for combined payment.
Returned only if it has been defined.

#    Argument: 'ns:ShippingInsuranceType'

=cut

sub setShippingInsurance {
  my $self = shift;
  $self->{'ShippingInsurance'} = shift
}

=head2 getShippingInsurance()

  Returned: Conditionally
#    Returns: 'ns:ShippingInsuranceType'

=cut

sub getShippingInsurance {
  my $self = shift;
  return $self->_getDataTypeInstance( 'ShippingInsurance'
		,'eBay::API::XML::DataType::ShippingInsuranceType');
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

#!/usr/bin/perl

package eBay::API::XML::DataType::CharitySellerType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharitySellerType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharitySellerType

=head1 DESCRIPTION

Contains information about one seller with a eBay Giving Works provider
charity seller account.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharitySellerType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::CharityAffiliationType;
use eBay::API::XML::DataType::Enum::CharitySellerStatusCodeType;


my @gaProperties = ( [ 'CharityAffiliation', 'ns:CharityAffiliationType', '1'
	     ,'eBay::API::XML::DataType::CharityAffiliationType', '1' ]
	, [ 'CharitySellerStatus', 'ns:CharitySellerStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharitySellerStatusCodeType', '' ]
	, [ 'TermsAndConditionsAccepted', 'xs:boolean', '', '', '' ]
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



=head2 setCharityAffiliation()

Indicates the affiliation status for nonprofit charity organizations registered with the dedicated eBay Giving Works provider.

#    Argument: reference to an array  
                      of 'ns:CharityAffiliationType'

=cut

sub setCharityAffiliation {
  my $self = shift;
  $self->{'CharityAffiliation'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getCharityAffiliation()

#    Returns: reference to an array  
                      of 'ns:CharityAffiliationType'

=cut

sub getCharityAffiliation {
  my $self = shift;
  return $self->_getDataTypeArray('CharityAffiliation');
}


=head2 setCharitySellerStatus()

Indicates the status of the seller's charity seller account.

#    Argument: 'ns:CharitySellerStatusCodeType'

=cut

sub setCharitySellerStatus {
  my $self = shift;
  $self->{'CharitySellerStatus'} = shift
}

=head2 getCharitySellerStatus()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CharitySellerStatusCodeType'

=cut

sub getCharitySellerStatus {
  my $self = shift;
  return $self->{'CharitySellerStatus'};
}


=head2 setTermsAndConditionsAccepted()

Indicates if the seller has accepted eBay GivingWorks Terms and Conditions.

#    Argument: 'xs:boolean'

=cut

sub setTermsAndConditionsAccepted {
  my $self = shift;
  $self->{'TermsAndConditionsAccepted'} = shift
}

=head2 isTermsAndConditionsAccepted()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:boolean'

=cut

sub isTermsAndConditionsAccepted {
  my $self = shift;
  return $self->{'TermsAndConditionsAccepted'};
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

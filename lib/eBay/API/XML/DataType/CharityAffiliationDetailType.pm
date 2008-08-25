#!/usr/bin/perl

package eBay::API::XML::DataType::CharityAffiliationDetailType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CharityAffiliationDetailType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CharityAffiliationDetailType

=head1 DESCRIPTION

The information of nonprofit charity organization affiliation.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CharityAffiliationDetailType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType;


my @gaProperties = ( [ 'AffiliationType', 'ns:CharityAffiliationTypeCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::CharityAffiliationTypeCodeType', '' ]
	, [ 'CharityID', 'xs:string', '', '', '' ]
	, [ 'LastUsedTime', 'xs:dateTime', '', '', '' ]
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



=head2 setAffiliationType()

Indicates the affiliation status of the nonprofit charity
organization registered with the eBay Giving Works provider.

#    Argument: 'ns:CharityAffiliationTypeCodeType'

=cut

sub setAffiliationType {
  my $self = shift;
  $self->{'AffiliationType'} = shift
}

=head2 getAffiliationType()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'ns:CharityAffiliationTypeCodeType'

=cut

sub getAffiliationType {
  my $self = shift;
  return $self->{'AffiliationType'};
}


=head2 setCharityID()

The affiliation ID for nonprofit charity organizations
registered with the dedicated eBay Giving Works provider.

#    Argument: 'xs:string'

=cut

sub setCharityID {
  my $self = shift;
  $self->{'CharityID'} = shift
}

=head2 getCharityID()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:string'

=cut

sub getCharityID {
  my $self = shift;
  return $self->{'CharityID'};
}


=head2 setLastUsedTime()

Indicates the affiliation last used date of the nonprofit charity
organization registered with the eBay Giving Works provider.

#    Argument: 'xs:dateTime'

=cut

sub setLastUsedTime {
  my $self = shift;
  $self->{'LastUsedTime'} = shift
}

=head2 getLastUsedTime()

  Calls: GetUser
  Returned: Conditionally
  Details: DetailLevel: none, ReturnSummary, ReturnAll

#    Returns: 'xs:dateTime'

=cut

sub getLastUsedTime {
  my $self = shift;
  return $self->{'LastUsedTime'};
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

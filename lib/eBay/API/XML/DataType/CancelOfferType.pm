#!/usr/bin/perl

package eBay::API::XML::DataType::CancelOfferType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CancelOfferType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::CancelOfferType

=head1 DESCRIPTION

Container for a list of offers. May contain zero, one, or multiple
OfferType objects, each of which represents one offer extended by
a user on a listing.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::CancelOfferType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::OfferType;


my @gaProperties = ( [ 'Explanation', 'xs:string', '', '', '' ]
	, [ 'Offer', 'ns:OfferType', ''
	     ,'eBay::API::XML::DataType::OfferType', '1' ]
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



=head2 setExplanation()

#    Argument: 'xs:string'

=cut

sub setExplanation {
  my $self = shift;
  $self->{'Explanation'} = shift
}

=head2 getExplanation()

#    Returns: 'xs:string'

=cut

sub getExplanation {
  my $self = shift;
  return $self->{'Explanation'};
}


=head2 setOffer()

Contains the data for one offer. This includes: data for the user making the
offer, the amount of the offer, the quantity of items being bought from the
listing, the type of offer being made, and more.

#    Argument: 'ns:OfferType'

=cut

sub setOffer {
  my $self = shift;
  $self->{'Offer'} = shift
}

=head2 getOffer()

#    Returns: 'ns:OfferType'

=cut

sub getOffer {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Offer'
		,'eBay::API::XML::DataType::OfferType');
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
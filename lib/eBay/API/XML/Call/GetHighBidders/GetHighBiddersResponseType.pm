#!/usr/bin/perl

package eBay::API::XML::Call::GetHighBidders::GetHighBiddersResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetHighBiddersResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetHighBidders::GetHighBiddersResponseType

=head1 DESCRIPTION

Returns a list of high bidders for the Dutch auction specified in the
ItemId property of the request.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetHighBidders::GetHighBiddersResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::OfferArrayType;
use eBay::API::XML::DataType::Enum::ListingStatusCodeType;


my @gaProperties = ( [ 'BidArray', 'ns:OfferArrayType', ''
	     ,'eBay::API::XML::DataType::OfferArrayType', '1' ]
	, [ 'ListingStatus', 'ns:ListingStatusCodeType', ''
	     ,'eBay::API::XML::DataType::Enum::ListingStatusCodeType', '' ]
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



=head2 setBidArray()

Contains a list of zero, one, or multiple OfferType objects. Each
OfferType object represents the data for one high bidder. See the schema
documentation for OfferType for details on its properties and their
meanings.

#    Argument: 'ns:OfferArrayType'

=cut

sub setBidArray {
  my $self = shift;
  $self->{'BidArray'} = shift
}

=head2 getBidArray()

  Returned: Always
#    Returns: 'ns:OfferArrayType'

=cut

sub getBidArray {
  my $self = shift;
  return $self->_getDataTypeInstance( 'BidArray'
		,'eBay::API::XML::DataType::OfferArrayType');
}


=head2 setListingStatus()

Specifies an active or ended listing's status in eBay's processing workflow.
If a listing ends with a sale (or sales), eBay needs to update the sale details
(e.g., winning bidder) and other information. This processing
can take several minutes. If you retrieve a sold item, use this listing status information
to determine whether eBay has finished processing the listing so that you can
be sure the winning bidder and other details are correct and complete.

#    Argument: 'ns:ListingStatusCodeType'

=cut

sub setListingStatus {
  my $self = shift;
  $self->{'ListingStatus'} = shift
}

=head2 getListingStatus()

  Returned: Always
#    Returns: 'ns:ListingStatusCodeType'

=cut

sub getListingStatus {
  my $self = shift;
  return $self->{'ListingStatus'};
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

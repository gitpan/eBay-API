#!/usr/bin/perl

package eBay::API::XML::Call::GetHighBidders;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetHighBidders.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetHighBidders

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetHighBidders inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetHighBidders::GetHighBiddersRequestType;
use eBay::API::XML::Call::GetHighBidders::GetHighBiddersResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetHighBidders';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetHighBidders::GetHighBiddersRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetHighBidders::GetHighBiddersResponseType';
}

#
# input properties
#

=head2 setItemID()

Unique item ID that identifies the Dutch auction listing for which to
retrieve a list of the high bidders.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: Yes
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}



#
# output properties
#

=head2 getBidArray()

Contains a list of zero, one, or multiple OfferType objects. Each
OfferType object represents the data for one high bidder. See the schema
documentation for OfferType for details on its properties and their
meanings.

  Returned: Always
#    Returns: 'ns:OfferArrayType'

=cut
       
sub getBidArray {
   my $self = shift;
   return $self->getResponseDataType()->getBidArray();
}

=head2 getListingStatus()

Specifies an active or ended listing's status in eBay's processing workflow.
If a listing ends with a sale (or sales), eBay needs to update the sale details
(e.g., winning bidder) and other information. This processing
can take several minutes. If you retrieve a sold item, use this listing status information
to determine whether eBay has finished processing the listing so that you can
be sure the winning bidder and other details are correct and complete.

  Returned: Always
#    Returns: 'ns:ListingStatusCodeType'

=cut
       
sub getListingStatus {
   my $self = shift;
   return $self->getResponseDataType()->getListingStatus();
}





1;   
#!/usr/bin/perl

package eBay::API::XML::Call::AddToItemDescription;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. AddToItemDescription.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::AddToItemDescription

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::AddToItemDescription inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::AddToItemDescription::AddToItemDescriptionRequestType;
use eBay::API::XML::Call::AddToItemDescription::AddToItemDescriptionResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'AddToItemDescription';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddToItemDescription::AddToItemDescriptionRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::AddToItemDescription::AddToItemDescriptionResponseType';
}

#
# input properties
#

=head2 setDescription()

Specifies the text to append to the end of the listings description.
Text appended to a listing's description must abide by the rules
applicable to this data (such as no JavaScript) as is the case when
first listing the item.

  RequiredInput: Yes
#    Argument: 'xs:string'

=cut
       
sub setDescription {
   my $self   = shift;
   my $sDescription = shift;
   $self->getRequestDataType()->setDescription($sDescription);
}

=head2 setItemID()

Unique item ID that identifies the target item listing, the description
of which is appended with the text specified in Description.

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





1;   

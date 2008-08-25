#!/usr/bin/perl

package eBay::API::XML::Call::GetAdFormatLeads;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetAdFormatLeads.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetAdFormatLeads

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetAdFormatLeads inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsRequestType;
use eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetAdFormatLeads';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetAdFormatLeads::GetAdFormatLeadsResponseType';
}

#
# input properties
#

=head2 setEndCreationTime()

Used with StartCreationTime to limit the returned leads for a user to only
those with a creation date less than or equal to the specified date and
time.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setEndCreationTime {
   my $self   = shift;
   my $sEndCreationTime = shift;
   $self->getRequestDataType()->setEndCreationTime($sEndCreationTime);
}

=head2 setIncludeMemberMessages()

Boolean which indicates whether to return mail messages for this lead in a MemberMessage node.

  RequiredInput: No
#    Argument: 'xs:boolean'

=cut
       
sub setIncludeMemberMessages {
   my $self   = shift;
   my $sIncludeMemberMessages = shift;
   $self->getRequestDataType()->setIncludeMemberMessages($sIncludeMemberMessages);
}

=head2 setItemID()

The unique identifier of an item listed on the eBay site.
Returned by eBay when the item is created. This ID must correspond
to an ad format item.

MaxLength: 19 (Note: The eBay database specifies 38. Currently, Item IDs are usually 9 to 12 digits)

  RequiredInput: No
#    Argument: 'ns:ItemIDType'

=cut
       
sub setItemID {
   my $self   = shift;
   my $pItemID = shift;
   $self->getRequestDataType()->setItemID($pItemID);
}

=head2 setStartCreationTime()

Used with EndCreationTime to limit the returned leads for a user to only
those with a creation date greater than or equal to the specified date and
time.

  RequiredInput: Conditionally
#    Argument: 'xs:dateTime'

=cut
       
sub setStartCreationTime {
   my $self   = shift;
   my $sStartCreationTime = shift;
   $self->getRequestDataType()->setStartCreationTime($sStartCreationTime);
}

=head2 setStatus()

Filters the leads based on their status.

  RequiredInput: No
#    Argument: 'ns:MessageStatusTypeCodeType'

=cut
       
sub setStatus {
   my $self   = shift;
   my $sStatus = shift;
   $self->getRequestDataType()->setStatus($sStatus);
}



#
# output properties
#

=head2 getAdFormatLead()

Contains contact and other information for one lead. One node is
returned for each lead. Only returned at a detail level of ReturnAll. At
least one lead must be available for the specified item to return
AdFormatLead.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:AdFormatLeadType'

=cut
       
sub getAdFormatLead {
   my $self = shift;
   return $self->getResponseDataType()->getAdFormatLead();
}

=head2 getAdFormatLeadCount()

The total number of leads returned. Only returned if you do not
specify a detail level.

  Returned: Conditionally
  Details: DetailLevel: none
#    Returns: 'xs:int'

=cut
       
sub getAdFormatLeadCount {
   my $self = shift;
   return $self->getResponseDataType()->getAdFormatLeadCount();
}





1;   
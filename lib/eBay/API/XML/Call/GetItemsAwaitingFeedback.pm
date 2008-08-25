#!/usr/bin/perl

package eBay::API::XML::Call::GetItemsAwaitingFeedback;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetItemsAwaitingFeedback.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetItemsAwaitingFeedback

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetItemsAwaitingFeedback inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackRequestType;
use eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetItemsAwaitingFeedback';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetItemsAwaitingFeedback::GetItemsAwaitingFeedbackResponseType';
}

#
# input properties
#

=head2 setPagination()

Specifies the number of entries per page and the page number to return
in the result set.

  RequiredInput: No
#    Argument: 'ns:PaginationType'

=cut
       
sub setPagination {
   my $self   = shift;
   my $pPagination = shift;
   $self->getRequestDataType()->setPagination($pPagination);
}

=head2 setSort()

Specifies how the returned feedback items should be sorted. 
Valid values are Title, EndTime, QuestionCount, FeedbackLeft, FeedbackReceivedDescending, UserIDDescending, TitleDescending, 
and EndTimeDescending.

  RequiredInput: No
#    Argument: 'ns:ItemSortTypeCodeType'

=cut
       
sub setSort {
   my $self   = shift;
   my $sSort = shift;
   $self->getRequestDataType()->setSort($sSort);
}



#
# output properties
#

=head2 getItemsAwaitingFeedback()

Contains the items awaiting feedback.
Returned only if there are items that do not yet
have feedback.

  Returned: Always
#    Returns: 'ns:PaginatedTransactionArrayType'

=cut
       
sub getItemsAwaitingFeedback {
   my $self = shift;
   return $self->getResponseDataType()->getItemsAwaitingFeedback();
}





1;   

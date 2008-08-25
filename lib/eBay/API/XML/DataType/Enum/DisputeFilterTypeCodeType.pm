#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeFilterTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeFilterTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeFilterTypeCodeType

=head1 DESCRIPTION

Specifies which disputes are returned. Filtering is done for disputes
that are awaiting a certain party's response or are closed. The returned list
can contain both Unpaid Item and Item Not Received disputes.
All disputes returned involve the requester as buyer or seller.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 AllInvolvedDisputes

All disputes that involve me as buyer or seller.



=cut


use constant AllInvolvedDisputes => scalar('AllInvolvedDisputes');


=head2 DisputesAwaitingMyResponse

All disputes that involve me as buyer or seller and
are awaiting my response. Default value.



=cut


use constant DisputesAwaitingMyResponse => scalar('DisputesAwaitingMyResponse');


=head2 DisputesAwaitingOtherPartyResponse

All disputes that involve me as buyer or seller and
are awaiting the other party's response.



=cut


use constant DisputesAwaitingOtherPartyResponse => scalar('DisputesAwaitingOtherPartyResponse');


=head2 AllInvolvedClosedDisputes

All disputes that involve me as buyer or seller and
are closed.



=cut


use constant AllInvolvedClosedDisputes => scalar('AllInvolvedClosedDisputes');


=head2 EligibleForCredit

All disputes that involve me as buyer or seller and
are eligible for a Final Value Fee credit, whether or not
the credit has been granted.



=cut


use constant EligibleForCredit => scalar('EligibleForCredit');


=head2 UnpaidItemDisputes

All Unpaid item disputes.



=cut


use constant UnpaidItemDisputes => scalar('UnpaidItemDisputes');


=head2 ItemNotReceivedDisputes

All Item Not Received disputes.



=cut


use constant ItemNotReceivedDisputes => scalar('ItemNotReceivedDisputes');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   
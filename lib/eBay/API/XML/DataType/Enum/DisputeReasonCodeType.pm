#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeReasonCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeReasonCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeReasonCodeType

=head1 DESCRIPTION

Specifies the top-level reason for the dispute and determines the values you
can use for DisputeExplanation. Some values are for Item Not Received disputes
and others are for Unpaid Item Process disputes.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 BuyerHasNotPaid

The buyer has not paid for the item. For Unpaid Item Process disputes.
Corresponds to legacy schema value 1.



=cut


use constant BuyerHasNotPaid => scalar('BuyerHasNotPaid');


=head2 TransactionMutuallyCanceled

The seller claims that the buyer agrees to not complete
the transaction. This triggers a waiting period for buyer agreement,
disagreement or no buyer response.
For Unpaid Item Process disputes.
Corresponds to legacy schema value 2.



=cut


use constant TransactionMutuallyCanceled => scalar('TransactionMutuallyCanceled');


=head2 ItemNotReceived

The buyer did not receive the item. For Item Not Received disputes.



=cut


use constant ItemNotReceived => scalar('ItemNotReceived');


=head2 SignificantlyNotAsDescribed

An option for Item Not Received disputes.



=cut


use constant SignificantlyNotAsDescribed => scalar('SignificantlyNotAsDescribed');


=head2 NoRefund

The item was returned but no refund was given.



=cut


use constant NoRefund => scalar('NoRefund');


=head2 ReturnPolicyUnpaidItem

Item was returned and seller was not paid.



=cut


use constant ReturnPolicyUnpaidItem => scalar('ReturnPolicyUnpaidItem');


=head2 CustomCode

Reserved for future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

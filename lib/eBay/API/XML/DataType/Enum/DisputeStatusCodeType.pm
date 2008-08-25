#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeStatusCodeType

=head1 DESCRIPTION

Describes the status of the dispute, which supplements the DisputeState.
Some values apply to Unpaid Item disputes and some to Item Not Received disputes.
Disputes can be sorted by DisputeStatus. Ascending order is:<br>
1 - WaitingForSellerResponse<br>
2 - WaitingForBuyerResponse<br>
3 - ClosedFVFCreditStrike<br>
4 - ClosedNoFVFCreditStrike<br>
5 - ClosedFVFCreditNoStrike<br>
6 - ClosedNoFVFCreditNoStrike<br>
7 - Closed<br>
8 - StrikeAppealedAfterClosing<br>
9	- FVFCreditReversedAfterClosing<br>
10 - StrikeAppealedAndFVFCreditReversed<br>
Descending order is the reverse.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Closed

(out) The dispute is closed. For Item Not Received disputes.



=cut


use constant Closed => scalar('Closed');


=head2 WaitingForSellerResponse

(out) The dispute is waiting for the seller's response. For both
Unpaid Item and Item Not Received disputes.



=cut


use constant WaitingForSellerResponse => scalar('WaitingForSellerResponse');


=head2 WaitingForBuyerResponse

(out) The dispute is waiting for the buyer's response. For both
Unpaid Item and Item Not Received disputes.



=cut


use constant WaitingForBuyerResponse => scalar('WaitingForBuyerResponse');


=head2 ClosedFVFCreditStrike

(out) The dispute is closed, the seller received
a Final Value Fee credit, and the buyer received a strike.
For Unpaid Item disputes.



=cut


use constant ClosedFVFCreditStrike => scalar('ClosedFVFCreditStrike');


=head2 ClosedNoFVFCreditStrike

(out) The dispute is closed, the seller did not receive
a Final Value Fee credit, and the buyer received a strike.
For Unpaid Item disputes.



=cut


use constant ClosedNoFVFCreditStrike => scalar('ClosedNoFVFCreditStrike');


=head2 ClosedFVFCreditNoStrike

(out) The dispute is closed, the seller received a
Final Value Fee credit, and the buyer did not receive a strike.
For Unpaid Item disputes.



=cut


use constant ClosedFVFCreditNoStrike => scalar('ClosedFVFCreditNoStrike');


=head2 ClosedNoFVFCreditNoStrike

(out) The dispute is closed, the seller did not receive
a Final Value Fee credit, and the buyer did not receive a strike.
For Unpaid Item disputes.



=cut


use constant ClosedNoFVFCreditNoStrike => scalar('ClosedNoFVFCreditNoStrike');


=head2 StrikeAppealedAfterClosing

(out) The buyer's strike was appealed after the dispute was closed.
For Unpaid Item disputes.



=cut


use constant StrikeAppealedAfterClosing => scalar('StrikeAppealedAfterClosing');


=head2 FVFCreditReversedAfterClosing

(out) The seller's Final Value Fee credit was reversed after the
dispute was closed. For Unpaid Item disputes.



=cut


use constant FVFCreditReversedAfterClosing => scalar('FVFCreditReversedAfterClosing');


=head2 StrikeAppealedAndFVFCreditReversed

(out) Both the seller's Final Value Fee credit and the buyer's strike
were reversed after the dispute was closed. For Unpaid Item disputes.



=cut


use constant StrikeAppealedAndFVFCreditReversed => scalar('StrikeAppealedAndFVFCreditReversed');


=head2 ClaimOpened

Claim assigned to an adjuster



=cut


use constant ClaimOpened => scalar('ClaimOpened');


=head2 NoDocumentation

Buyer contacted and asked to submit paperwork



=cut


use constant NoDocumentation => scalar('NoDocumentation');


=head2 ClaimClosed

Buyer did not respond to verification or missing some paperwork



=cut


use constant ClaimClosed => scalar('ClaimClosed');


=head2 ClaimDenied

Not eligible for reimbursement



=cut


use constant ClaimDenied => scalar('ClaimDenied');


=head2 ClaimInProcess

Paperwork received, claim being investigated



=cut


use constant ClaimInProcess => scalar('ClaimInProcess');


=head2 ClaimApproved

Claim approved for reimbursement, sent to Account's payable for payment



=cut


use constant ClaimApproved => scalar('ClaimApproved');


=head2 ClaimPaid

Reimbursement completed



=cut


use constant ClaimPaid => scalar('ClaimPaid');


=head2 ClaimResolved

Issue resolved: seller sent Item or Refund



=cut


use constant ClaimResolved => scalar('ClaimResolved');


=head2 ClaimSubmitted

Claim Submitted via Web flow



=cut


use constant ClaimSubmitted => scalar('ClaimSubmitted');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

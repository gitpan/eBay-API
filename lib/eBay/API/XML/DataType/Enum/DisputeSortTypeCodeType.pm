#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::DisputeSortTypeCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. DisputeSortTypeCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::DisputeSortTypeCodeType

=head1 DESCRIPTION

Specifies how a list of returned disputes should be sorted.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 None

(in) Sort by the time the dispute was created, in descending order.



=cut


use constant None => scalar('None');


=head2 DisputeCreatedTimeAscending

(in) Sort by the time the dispute was created, in ascending order.



=cut


use constant DisputeCreatedTimeAscending => scalar('DisputeCreatedTimeAscending');


=head2 DisputeCreatedTimeDescending

(in) Sort by the time the dispute was created, in descending order.



=cut


use constant DisputeCreatedTimeDescending => scalar('DisputeCreatedTimeDescending');


=head2 DisputeStatusAscending

(in) Sort by the dispute status, in ascending order.



=cut


use constant DisputeStatusAscending => scalar('DisputeStatusAscending');


=head2 DisputeStatusDescending

(in) Sort by the dispute status, in descending order.



=cut


use constant DisputeStatusDescending => scalar('DisputeStatusDescending');


=head2 DisputeCreditEligibilityAscending

(in) Sort by whether the dispute is eligible for
Final Value Fee credit, in ascending
order. Ineligible disputes are listed before eligible disputes.



=cut


use constant DisputeCreditEligibilityAscending => scalar('DisputeCreditEligibilityAscending');


=head2 DisputeCreditEligibilityDescending

(in) Sort by whether the dispute is eleigible for
Final Value Fee credit, in descending
order. Eligible disputes are listed before i(ineligible disputes.



=cut


use constant DisputeCreditEligibilityDescending => scalar('DisputeCreditEligibilityDescending');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

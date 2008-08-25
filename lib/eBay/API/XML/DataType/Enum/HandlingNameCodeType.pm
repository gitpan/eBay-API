#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::HandlingNameCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. HandlingNameCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::HandlingNameCodeType

=head1 DESCRIPTION

How packaging/handling cost is to be determined for combined payment.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EachAdditionalAmount

After eBay assigns the highest packaging/handling cost to the first item, the
packaging/handling cost for each additional item is $n.



=cut


use constant EachAdditionalAmount => scalar('EachAdditionalAmount');


=head2 EachAdditionalAmountOff

After eBay assigns the highest packaging/handling cost to the first item, the
packaging/handling cost for each additional item is to be reduced by amount N.



=cut


use constant EachAdditionalAmountOff => scalar('EachAdditionalAmountOff');


=head2 EachAdditionalPercentOff

After eBay assigns the highest packaging/handling cost to the first item, the
packaging/handling cost for each additional item is to be reduced by N percent.



=cut


use constant EachAdditionalPercentOff => scalar('EachAdditionalPercentOff');


=head2 IndividualHandlingFee

The total packaging/handling cost is to be the sum of the
packaging/handling costs of the individual items.



=cut


use constant IndividualHandlingFee => scalar('IndividualHandlingFee');


=head2 CombinedHandlingFee

The packaging/handling cost is to be N for the entire order.



=cut


use constant CombinedHandlingFee => scalar('CombinedHandlingFee');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

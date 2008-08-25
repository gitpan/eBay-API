#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::RecipientRelationCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. RecipientRelationCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::RecipientRelationCodeType

=head1 DESCRIPTION

A seller can make a Transaction Confirmation Request (TCR) for an item. This code
list contains values to specify the current relationship between the seller and
the potential buyer. For a seller to make a Transaction Confirmation Request (TCR)
for an item, the potential buyer must meet one of the criteria in this code list.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 N1

Indicates that the recipient has one or more bids on the item; the relationship is "bidder."



=cut


use constant N1 => scalar('1');


=head2 N2

Indicates that the recipient has one or more best offers on the item; the
relationship is "best offer buyer."



=cut


use constant N2 => scalar('2');


=head2 N3

Indicates that the recipient has asked the seller a question about the item;
the relationship is "a member with an ASQ question."



=cut


use constant N3 => scalar('3');


=head2 N4

Indicates that the recipient has a postal code; the relationship is "a member
with a postal code."



=cut


use constant N4 => scalar('4');


=head2 CustomCode

Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

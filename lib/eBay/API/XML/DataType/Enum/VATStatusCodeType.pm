#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::VATStatusCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. VATStatusCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::VATStatusCodeType

=head1 DESCRIPTION

Indicates whether or not the user is subject to VAT.
Users who have registered with eBay as VAT-exempt are not
subject to VAT. See documentation on Value-Added Tax (VAT).



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 NoVATTax

(out) VAT is not applicable



=cut


use constant NoVATTax => scalar('NoVATTax');


=head2 VATTax

(out) Residence in a country with VAT and user is not registered as VAT-exempt



=cut


use constant VATTax => scalar('VATTax');


=head2 VATExempt

(out) Residence in a country with VAT and user is registered as VAT-exempt



=cut


use constant VATExempt => scalar('VATExempt');


=head2 CustomCode

(out) Reserved for internal or future use



=cut


use constant CustomCode => scalar('CustomCode');







1;   

#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::StoreCustomHeaderLayoutCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. StoreCustomHeaderLayoutCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::StoreCustomHeaderLayoutCodeType

=head1 DESCRIPTION

Specifies whether the Store has a custom header.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 NoHeader

Specifies that the Store does not have a custom header.



=cut


use constant NoHeader => scalar('NoHeader');


=head2 CustomHeaderShown

Specifies that the Store does have a custom header.



=cut


use constant CustomHeaderShown => scalar('CustomHeaderShown');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::ClassifiedAdPaymentMethodEnabledCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. ClassifiedAdPaymentMethodEnabledCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::ClassifiedAdPaymentMethodEnabledCodeType

=head1 DESCRIPTION

Used to indicate whether the payment method will be displayed for a category 
belonging to the Lead Generation Format.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 EnabledWithCheckout

Display the payment method and permit checkout.



=cut


use constant EnabledWithCheckout => scalar('EnabledWithCheckout');


=head2 EnabledWithoutCheckout

Display the payment method and suppress checkout.



=cut


use constant EnabledWithoutCheckout => scalar('EnabledWithoutCheckout');


=head2 NotSupported

Do not display the payment method.



=cut


use constant NotSupported => scalar('NotSupported');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

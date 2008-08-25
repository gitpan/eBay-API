#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::CategoryListingsSearchCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. CategoryListingsSearchCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::CategoryListingsSearchCodeType

=head1 DESCRIPTION

CategoryListingsSearchCodeType - Type declaration to be used by
other schema. Used to filter returned item listings to just those
that are featured or super-featured.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Featured

(in) Return only featured item listings.



=cut


use constant Featured => scalar('Featured');


=head2 SuperFeatured

(in) Return only super-featured item listings.



=cut


use constant SuperFeatured => scalar('SuperFeatured');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

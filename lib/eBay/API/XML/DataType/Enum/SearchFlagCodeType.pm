#!/usr/bin/perl

package eBay::API::XML::DataType::Enum::SearchFlagCodeType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. SearchFlagCodeType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::Enum::SearchFlagCodeType

=head1 DESCRIPTION

SearchFlagCodeType - Search flags for FindItemsAdvanced.



=head1 SYNOPSIS

=cut



=head1 Enums:

=cut


=head2 Charity

Return only charity item listings.



=cut


use constant Charity => scalar('Charity');


=head2 Gift

Return only gift items.



=cut


use constant Gift => scalar('Gift');


=head2 NowAndNew

Return only items that have been listed with Now and New. Applicable for
certain sites only.



=cut


use constant NowAndNew => scalar('NowAndNew');


=head2 LocalSearch

Perform a local search.



=cut


use constant LocalSearch => scalar('LocalSearch');


=head2 FreeShipping

If specified, only items with free shipping for the user's location are
returned. The user's location is determined from the site ID specified
in the request. If false, no filtering is done via this attribute. A
listing is not considered a free shipping listing if it requires
insurance or requires pick up or requires a shipping surcharge.



=cut


use constant FreeShipping => scalar('FreeShipping');


=head2 Gallery

Return Gallery items only.



=cut


use constant Gallery => scalar('Gallery');


=head2 Picture

Picture.



=cut


use constant Picture => scalar('Picture');


=head2 GetItFast

Limits the results to Get It Fast listings.



=cut


use constant GetItFast => scalar('GetItFast');


=head2 Lot

Limits the results to only those listings for which lot size is 2 or greater.



=cut


use constant Lot => scalar('Lot');


=head2 GermanMotorsSearchable

Limits the results based on each item's eligibility to appear on the
mobile.de site. If
specified, queries for eligible items only. If not specified, the search
results are not affected. Only applicable for items listed on the eBay
Germany site (site ID 77) in subcategories of mobile.de search-enabled
categories.



=cut


use constant GermanMotorsSearchable => scalar('GermanMotorsSearchable');


=head2 DigitalDelivery

The digital delivery feature is disabled as of March 28, 2008.
<br><br>
If specified, limits the results to digitally delivered good only.



=cut


use constant DigitalDelivery => scalar('DigitalDelivery');


=head2 CustomCode

(out) Reserved for internal or future use.



=cut


use constant CustomCode => scalar('CustomCode');







1;   

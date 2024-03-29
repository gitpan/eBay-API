#!/usr/bin/perl

package eBay::API::XML::Call::GetCategoryMappings;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategoryMappings.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategoryMappings

=head1 DESCRIPTION



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategoryMappings inherits from the L<eBay::API::XML::BaseCall> class

=cut

use eBay::API::XML::BaseCall;
our @ISA = ("eBay::API::XML::BaseCall");

use eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsRequestType;
use eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsResponseType;


=head1 Subroutines:

=cut

sub getApiCallName {
   return 'GetCategoryMappings';
}
sub getRequestDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsRequestType';
}
sub getResponseDataTypeFullPackage {
   return 'eBay::API::XML::Call::GetCategoryMappings::GetCategoryMappingsResponseType';
}

#
# input properties
#

=head2 setCategoryVersion()

A version of the category mapping for the site. Filters
out data from the call to return only the category
mappings for which the data has changed since the
specified version. If not specified, all category
mappings are returned. Typically, an application passes
the version value of the last set of category mappings
that the application stored locally. The latest version
value is not necessarily greater than the previous value
that was returned. Therefore, when comparing versions,
only compare whether the value has changed.

  RequiredInput: No
#    Argument: 'xs:string'

=cut
       
sub setCategoryVersion {
   my $self   = shift;
   my $sCategoryVersion = shift;
   $self->getRequestDataType()->setCategoryVersion($sCategoryVersion);
}



#
# output properties
#

=head2 getCategoryMapping()

Mapping between an old category ID and an active category ID. Returned when
category mappings exist and the value of CategoryVersion is different from
the current version on the site.

  Returned: Conditionally
  Details: DetailLevel: ReturnAll
#    Returns: reference to an array  
                      of 'ns:CategoryMappingType'

=cut
       
sub getCategoryMapping {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryMapping();
}

=head2 getCategoryVersion()

Version value assigned to the current category mapping data for the site.
Compare this value to the version value the application stored with the mappings
the last time the application executed the call. If the versions are the same,
the data has not changed since the last time the data was retrieved and stored.

  Returned: Always
  Details: DetailLevel: none, ReturnAll
#    Returns: 'xs:string'

=cut
       
sub getCategoryVersion {
   my $self = shift;
   return $self->getResponseDataType()->getCategoryVersion();
}





1;   

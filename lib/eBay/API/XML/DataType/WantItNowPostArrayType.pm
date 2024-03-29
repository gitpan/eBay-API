#!/usr/bin/perl

package eBay::API::XML::DataType::WantItNowPostArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. WantItNowPostArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::WantItNowPostArrayType

=head1 DESCRIPTION

Container for a list of search result items. Can contain zero, one, or multiple
WantItNowPostType objects, each of which contains data for a single Want It Now
post found by the search.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::WantItNowPostArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::WantItNowPostType;


my @gaProperties = ( [ 'WantItNowPost', 'ns:WantItNowPostType', '1'
	     ,'eBay::API::XML::DataType::WantItNowPostType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setWantItNowPost()

Contains data for a Want It Now post found by a search.

#    Argument: reference to an array  
                      of 'ns:WantItNowPostType'

=cut

sub setWantItNowPost {
  my $self = shift;
  $self->{'WantItNowPost'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getWantItNowPost()

  Calls: GetWantItNowSearchResults
  Returned: Conditionally

#    Returns: reference to an array  
                      of 'ns:WantItNowPostType'

=cut

sub getWantItNowPost {
  my $self = shift;
  return $self->_getDataTypeArray('WantItNowPost');
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   

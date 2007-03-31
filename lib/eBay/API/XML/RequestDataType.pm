#!/usr/bin/perl -w

##########################################################################
#
# Module: ............... <user defined location>/eBay/API/XML
# File: ................. RequestDataType.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 18:30
#
##########################################################################

package eBay::API::XML::RequestDataType;

use strict;

use Exporter;
use eBay::API::XML::DataType::AbstractRequestType;

# Globals
our $VERSION = '0.01';    # The version of this module.

our @ISA = ('Exporter'
		, 'eBay::API::XML::DataType::AbstractRequestType');


my @gaProperties = (  );
push @gaProperties, 
  @{eBay::API::XML::DataType::AbstractRequestType::getPropertiesList()};

my @gaAttributes = ( ['xmlns', 'xs:string', '', ''] );  
push @gaAttributes, 
  @{eBay::API::XML::DataType::AbstractRequestType::getAttributesList()};

sub new {
  my $classname = shift;
  my %args = @_;

  my $self = $classname->SUPER::new(%args);

  $self->{'xmlns'} = 'urn:ebay:apis:eBLBaseComponents';

  return $self;
}

sub getPropertiesList {
  my $self = shift;
  return \@gaProperties;
}

sub getAttributesList {
  my $self = shift;
  return \@gaAttributes;
}

1;

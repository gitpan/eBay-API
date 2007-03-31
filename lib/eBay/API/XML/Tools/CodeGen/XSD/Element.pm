#!/usr/bin/perl -w
#


################################################################################
# Location: ............. <user defined location>eBay/API/XML/Tools/CodeGen/XSD
# File: ................. Element.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 23:09
################################################################################


package eBay::API::XML::Tools::CodeGen::XSD::Element;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

use lib '../../../../../../';  # To get access to all packages in XSD directory
use strict;
use warnings;
use Exporter;
use Data::Dumper;

use eBay::API::XML::Tools::CodeGen::XSD::Annotation;

sub new {

  my $classname = shift;
  my $rhXmlSimple = shift;

  my $self = {};
  bless($self, $classname);

  $self->{'name'}         = $rhXmlSimple->{'name'};
  $self->{'typeNS'}       = $rhXmlSimple->{'type'};
  $self->{'maxOccurs'}    = $rhXmlSimple->{'maxOccurs'};

  my $rhAnnotation = $rhXmlSimple->{'xs:annotation'};
  my $pAnnotation;
  if ( defined $rhAnnotation ) {
	   $pAnnotation = eBay::API::XML::Tools::CodeGen::XSD::Annotation->new ( $rhAnnotation );
  }
  $self->setAnnotation( $pAnnotation );

  return $self;  
}

sub getName {
  my $self = shift;
  return $self->{'name'};
}
sub setName {
  my $self = shift;
  $self->{'name'} = shift;  
}

sub getAnnotation {
  my $self = shift;
  return $self->{'pAnnotation'};
}
sub setAnnotation {
  my $self = shift;
  $self->{'pAnnotation'} = shift;  
}

sub getTypeNS {
  my $self = shift;
  return $self->{'typeNS'};
}
sub setTypeNS {
  my $self = shift;
  $self->{'typeNS'} = shift;  
}

sub getMaxOccurance {
  my $self = shift;
  return $self->{'maxOccurs'};
}
sub setMaxOccurance {
  my $self = shift;
  $self->{'maxOccurs'} = shift;  
}

#
# derived properties
#
sub isArray () {

  my $self = shift;

  my $maxOccurance = $self->{'maxOccurs'};
  if ( defined $maxOccurance 
	    && ( $maxOccurance eq 'unbounded'
	              || $maxOccurance > 1 )
     ) {
     return 1;
  }
  return 0;
}


1;
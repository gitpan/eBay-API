#!/usr/bin/perl -w
#


################################################################################
# Location: ............. <user defined location>eBay/API/XML/tools/codegen/xsd
# File: ................. EnumElement.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 18:59
################################################################################


package EnumElement;


# Global Variables
our $VERSION = '0.01';    # The version of this module.


use strict;
use warnings;

use Exporter;
use Data::Dumper;

use Annotation;

sub new {

  my $classname = shift;
  my $rhXmlSimple = shift;

  my $self = {};
  bless($self, $classname);

    # 1. value
  $self->{'value'} = $rhXmlSimple->{'value'};

    # 2. annotation
  my $rhAnnotation = $rhXmlSimple->{'xs:annotation'};
  my $pAnnotation;
  if ( defined $rhAnnotation ) {
     $pAnnotation = Annotation->new ( $rhAnnotation );
  }

  $self->setAnnotation( $pAnnotation );

  return $self;  
}

sub getValue {
  my $self = shift;
  return $self->{'value'};
}
sub setValue {
  my $self = shift;
  $self->{'value'} = shift;  
}

sub getAnnotation {
  my $self = shift;
  return $self->{'pAnnotation'};
}
sub setAnnotation {
  my $self = shift;
  $self->{'pAnnotation'} = shift;  
}

1;

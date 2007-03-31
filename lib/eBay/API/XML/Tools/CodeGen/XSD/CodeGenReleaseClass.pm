#!/usr/bin/perl -w
#


################################################################################
# Location: ............. <user defined location>eBay/API/XML/Tools/CodeGen/XSD
# File: ................. CodeGenReleaseClass.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 23:09
################################################################################


package eBay::API::XML::Tools::CodeGen::XSD::CodeGenReleaseClass;

use lib '../../../../../../';  # To get access to all packages in XSD directory
use strict;
use warnings;
use Exporter;

use eBay::API::XML::Tools::CodeGen::XSD::BaseCodeGenDataType;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = (
       'Exporter',
       'eBay::API::XML::Tools::CodeGen::XSD::BaseCodeGenDataType',
    );


sub new {

   my $classname = shift;
   my %args = @_;

   my $self = {};
   bless ( $self, $classname);

   $self->setName( $args{'name'} );
   $self->setNumber( $args{'number'} );
   $self->setType ( $args{'type'});

   return $self;
}

#
# auxilary methods
#

sub getFullPackageName {
   
   my $self = shift;	
   
   my $str =  $self->getRootPackageName()
                 . '::' . $self->getName();
   return $str;
}

sub _getClassBody {

  my $self = shift;

  my $number = $self->getNumber();
  my $type   = $self->getType();

  my $packageBody = <<"PACKAGE_BODY";

use constant RELEASE_NUMBER => '$number';
use constant RELEASE_TYPE   => '$type';

PACKAGE_BODY

  return $packageBody
}

sub getNumber {
  my $self = shift;
  return $self->{'number'};  
}
sub setNumber {
  my $self = shift;
  $self->{'number'}  = shift; 
}

sub getType {
  my $self = shift;
  return $self->{'type'};  
}
sub setType {
  my $self = shift;
  $self->{'type'}  = shift; 
}

1;

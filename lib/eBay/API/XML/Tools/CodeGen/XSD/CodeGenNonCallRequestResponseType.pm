#!/usr/bin/perl -w
#


################################################################################
# Location: ............. <user defined location>eBay/API/XML/Tools/CodeGen/XSD
# File: ................. CodeGenEnumDataType.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 23:08
################################################################################


package eBay::API::XML::Tools::CodeGen::XSD::CodeGenNonCallRequestResponseType;

use lib '../../../../../../';  # To get access to all packages in XSD directory
use strict;
use warnings;
use Exporter;

use eBay::API::XML::Tools::CodeGen::XSD::CodeGenRequestResponseType;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = (
       'Exporter',
       'eBay::API::XML::Tools::CodeGen::XSD::CodeGenRequestResponseType',
    );


sub _determineFullPackageName {
   
   my $self = shift;

   my $str = $self->getRootPackageName()
                 . '::' . 'DataType' 
                 . '::' . $self->getName();
    
   return $str;
}


1;

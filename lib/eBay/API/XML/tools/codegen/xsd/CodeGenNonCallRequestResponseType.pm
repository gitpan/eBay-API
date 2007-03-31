#!/usr/bin/perl -w
#


################################################################################
# Location: ............. <user defined location>eBay/API/XML/tools/codegen/xsd
# File: ................. CodeGenEnumDataType.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 18:54
################################################################################


package CodeGenNonCallRequestResponseType;

use strict;
use warnings;

use Exporter;
use CodeGenRequestResponseType;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = ('Exporter'
	    ,'CodeGenRequestResponseType'
           );


sub _determineFullPackageName {
   
   my $self = shift;	
   
   my $str = $self->getRootPackageName()
                 . '::' . 'DataType' 
                 . '::' . $self->getName();
    
   return $str;
}


1;

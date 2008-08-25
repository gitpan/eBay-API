#!/usr/bin/perl -w
#

package CodeGenNonCallRequestResponseType;

use strict;
use warnings;

use Exporter;
use CodeGenRequestResponseType;
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

#!/usr/bin/perl -w
#


################################################################################
#
# Module: ............... <user defined location>eBay/API/XML/tools/codegen/xsd
# File: ................. CodeGenComplexSimpleDataType.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 18:51
#
################################################################################


package CodeGenComplexSimpleDataType;

use strict;
use warnings;

use Exporter;
use BaseCodeGenDataType;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = ('Exporter'
	    ,'CodeGenComplexDataType'
           );


use Data::Dumper;
use Element;

#
# use superclass new constructor
#

#
#  Overridden methods
#

sub _initElementsAndAttributes {

  my $self = shift;	
  my $rh= shift;

  #print Dumper($self);

     # 3. superclass name, elements and attributes

  my $rhSimpleContent = $rh->{'xs:simpleContent'};
  if ( defined $rhSimpleContent ) {

     my $rhExtension = $rhSimpleContent->{'xs:extension'};

     if ( defined $rhExtension ) {

         my $rhElem;
         my $pElement;	 

	    # 3.1 superclass name
         my $typeNS = $rhExtension->{'base'};
	 $typeNS = $self->validateType ( $typeNS );	 
         $self->setSuperclassName( $typeNS );

	    # 3.2  elements
	    
           # each ComplexSimpleDataType type has attributes and a value. 
	   # Value can be either a Primitive type or an Enum
           #   example: AmountType
           # Type value is defined by 'base' attribute
           #   generate setter/getter for value
           
           #  'content' property is a special property
           #    getValue and setValue are setters for 'content' property	 
	 my $internalName = 'content';
         $rhElem = {
		       'name'   => $internalName
                      ,'type' => $typeNS
		      ,'xs:annotation' => undef
		      ,'maxOccurs'    => undef
                   };		 

	 $pElement = Element->new( $rhElem );
         my @aElements = ();	      
	 push @aElements, $pElement;

	 $self->setElements (\@aElements );

	 
	    # 3.3  attributes

         my $raAttributes = $rhExtension->{'xs:attribute'};	      

	 my @arr = ();
	 foreach $rhElem (@$raAttributes) {

	    $pElement = Element->new( $rhElem );
	    push @arr, $pElement;
	 }

	 $self->setAttributes (\@arr );
     }
  }
}

1;

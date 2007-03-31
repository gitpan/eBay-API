#!/usr/bin/perl -w
#

################################################################################
# Module: ............... <user defined location>eBay/API/XML/Tools/CodeGen/XSD
# File: ................. CodeGenComplexSimpleDataType.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 23:08
################################################################################


package eBay::API::XML::Tools::CodeGen::XSD::CodeGenComplexSimpleDataType;

use lib '../../../../../../';  # To get access to all packages in XSD directory
use strict;
use warnings;
use Exporter;
use Data::Dumper;

use eBay::API::XML::Tools::CodeGen::XSD::BaseCodeGenDataType;
use eBay::API::XML::Tools::CodeGen::XSD::Element;


# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = (
       'Exporter',
       'eBay::API::XML::Tools::CodeGen::XSD::CodeGenComplexDataType',
    );



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

	 $pElement = eBay::API::XML::Tools::CodeGen::XSD::Element->new( $rhElem );
         my @aElements = ();	      
	 push @aElements, $pElement;

	 $self->setElements (\@aElements );

	 
	    # 3.3  attributes

         my $raAttributes = $rhExtension->{'xs:attribute'};	      

	 my @arr = ();
	 foreach $rhElem (@$raAttributes) {

	    $pElement = eBay::API::XML::Tools::CodeGen::XSD::Element->new( $rhElem );
	    push @arr, $pElement;
	 }

	 $self->setAttributes (\@arr );
     }
  }
}

1;

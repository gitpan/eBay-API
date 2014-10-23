#!/usr/bin/perl
#

################################################################################
# Location: ............. <user defined location>eBay/API/XML/tools/codegen/xsd
# File: ................. CodeGenBaseCallGenClass.pm
# Original Author: ...... Milenko Milanovic
# Last Modified By: ..... Robert Bradley / Jeff Nokes
# Last Modified: ........ 03/30/2007 @ 18:47
################################################################################

=pod

=head1 CodeGenBaseCallGenClass

Generate the base class for all code generated call classes.

=cut

package CodeGenBaseCallGenClass;

use strict;
use warnings;

use Exporter;

# Global Variables
our $VERSION = '0.01';    # The version of this module.

our @ISA = ('Exporter'
    	    ,'CodeGenApiCall'
           );

sub _determineFullPackageName {

   my $self = shift;

   my $str = $self->getRootPackageName()
                     . '::' . $self->getName();
   return $str;
}

sub _getSuperClassFullPackageName {
   my $self = shift;

   my $str = $self->getRootPackageName()
                     . '::' . 'BaseXml';
   return $str;
}

sub _getClassBody {
	
  my $self = shift;
  my %args = @_;

  my $sCallName    = $self->getName();
  my $pRequestGen  = $self->{'requestCodeGen'};
  my $pResponseGen = $self->{'responseCodeGen'};

  my $sSuperClassPackage  = $self->_getSuperClassFullPackageName();
  
    # Find element names that exists for both for Request and Response
    # In case we have an element that exists for both Request and Response
    #   we will add a 'Request' and 'Response' prefix respectivly to that name
    #    (in order to avoid conflict in those names)
  my %hSameNames = $self->_getSameElementNames();

     ## create input/output properties
  my $inputProperties = $self->getApiGettersSetters (
	                          'pCodeGenClass' => $pRequestGen
                             ,'rhSameNames' => \%hSameNames
                             ,'sRequestOrResponse'=> 'Request'
                             ,'createSetters'=> 1
                             ,'createGetters'=> 1
	                                     );
  my $outputProperties = $self->getApiGettersSetters (
	                          'pCodeGenClass' => $pResponseGen
                             ,'rhSameNames' => \%hSameNames
                             ,'sRequestOrResponse'=> 'Response'
                             ,'createSetters'=> 0  # do not generate setters for response
                             ,'createGetters'=> 1
	                                     );

  my $packageBody = <<"PACKAGE_BODY";

use $sSuperClassPackage;
our \@ISA = ("$sSuperClassPackage");

=head1 Subroutines:

=cut

#
# INPUT properties (request)
#

$inputProperties

#
# OUTPUT properties (response)
#

$outputProperties

PACKAGE_BODY

  return $packageBody;

}


=head2 _getSameElementNames()

  Returns a hash whose keys contain element names that exist for both Request and Response

=cut 

sub _getSameElementNames {
    my $self = shift;
    my %args = @_;

    my $pRequestGen  = $self->{'requestCodeGen'};
    my $pResponseGen = $self->{'responseCodeGen'};

    my %hReqElemenNames = $self->_getReqResElementNames( $pRequestGen );
    my %hRespElemenNames = $self->_getReqResElementNames( $pResponseGen );

    my %hSameNames = ();
    foreach my $name ( keys %hReqElemenNames) {
        if ( exists $hRespElemenNames{$name} ) {
            $hSameNames{$name} = '';
        }
    }
    return %hSameNames;
}

=head2 _getReqResElementNames()

  Returns a hash whose keys contain element names for given ReqRes Code genertion class

=cut 

sub _getReqResElementNames {
    my $self = shift;
    my $pReqRespGen = shift;

    my $raRequestElements = $pReqRespGen->getElements();
    my %hElemNames = ();
    foreach my $pElem ( @$raRequestElements ) {
        my $name    = $pElem->getName();
        $hElemNames{$name} = '';
    }
    return %hElemNames;
}

1;

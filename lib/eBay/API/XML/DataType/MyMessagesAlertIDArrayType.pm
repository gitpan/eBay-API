#!/usr/bin/perl

package eBay::API::XML::DataType::MyMessagesAlertIDArrayType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. MyMessagesAlertIDArrayType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::MyMessagesAlertIDArrayType

=head1 DESCRIPTION

Contains a list of up to 10 AlertID values.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::MyMessagesAlertIDArrayType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");

use eBay::API::XML::DataType::MyMessagesAlertIDType;


my @gaProperties = ( [ 'AlertID', 'ns:MyMessagesAlertIDType', '1'
	     ,'eBay::API::XML::DataType::MyMessagesAlertIDType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::BaseDataType::getAttributesList()};

=head1 Subroutines:

=cut

sub new {
  my $classname = shift;
  my %args = @_;
  my $self = $classname->SUPER::new(%args);
  return $self;
}

sub isScalar {
   return 0; 
}



=head2 setAlertID()

An ID that uniquely identifies an alert for a given user. When AlertID values
are used as input, you must generally specify either AlertID values, or MessageID values,
or both.

  Calls: DeleteMyMessages
         GetMyMessages
         ReviseMyMessages
  RequiredInput: Conditionally

#    Argument: reference to an array  
                      of 'ns:MyMessagesAlertIDType'

=cut

sub setAlertID {
  my $self = shift;
  $self->{'AlertID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getAlertID()

#    Returns: reference to an array  
                      of 'ns:MyMessagesAlertIDType'

=cut

sub getAlertID {
  my $self = shift;
  return $self->_getDataTypeArray('AlertID');
}





##  Attribute and Property lists
sub getPropertiesList {
   my $self = shift;
   return \@gaProperties;
}

sub getAttributesList {
   my $self = shift;
   return \@gaAttributes;
}



1;   

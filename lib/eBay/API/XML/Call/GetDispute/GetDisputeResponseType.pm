#!/usr/bin/perl

package eBay::API::XML::Call::GetDispute::GetDisputeResponseType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetDisputeResponseType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetDispute::GetDisputeResponseType

=head1 DESCRIPTION

Returned after calling GetDisputeRequest. Returns the record of
a dispute, including the dispute state and other information.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetDispute::GetDisputeResponseType inherits from the L<eBay::API::XML::ResponseDataType> class

=cut

use eBay::API::XML::ResponseDataType;
our @ISA = ("eBay::API::XML::ResponseDataType");

use eBay::API::XML::DataType::DisputeType;


my @gaProperties = ( [ 'Dispute', 'ns:DisputeType', ''
	     ,'eBay::API::XML::DataType::DisputeType', '1' ]
                    );
push @gaProperties, @{eBay::API::XML::ResponseDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::ResponseDataType::getAttributesList()};

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



=head2 setDispute()

The dispute record, containing information about
the buyer, seller, dispute state, dispute status,
comments added to the dispute, or resolutions.

#    Argument: 'ns:DisputeType'

=cut

sub setDispute {
  my $self = shift;
  $self->{'Dispute'} = shift
}

=head2 getDispute()

  Returned: Always
#    Returns: 'ns:DisputeType'

=cut

sub getDispute {
  my $self = shift;
  return $self->_getDataTypeInstance( 'Dispute'
		,'eBay::API::XML::DataType::DisputeType');
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

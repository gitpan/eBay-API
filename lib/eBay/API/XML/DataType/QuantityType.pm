#!/usr/bin/perl

package eBay::API::XML::DataType::QuantityType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. QuantityType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::DataType::QuantityType

=head1 DESCRIPTION

Basic type for specifying quantities.



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::DataType::QuantityType inherits from the L<eBay::API::XML::BaseDataType> class

=cut

use eBay::API::XML::BaseDataType;
our @ISA = ("eBay::API::XML::BaseDataType");



my @gaProperties = ( [ 'content', 'xs:decimal', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::BaseDataType::getPropertiesList()};

my @gaAttributes = ( [ 'unit', 'xs:token', '', '', '' ]
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



=head2 setValue()

#    Argument: 'xs:decimal'

=cut

sub setValue {
  my $self = shift;
  $self->{'content'} = shift
}

=head2 getValue()

#    Returns: 'xs:decimal'

=cut

sub getValue {
  my $self = shift;
  return $self->{'content'};
}




=head2 setUnit()

#    Argument: 'xs:token'

=cut

sub setUnit {
  my $self = shift;
  $self->{'unit'} = shift
}

=head2 getUnit()

#    Returns: 'xs:token'

=cut

sub getUnit {
  my $self = shift;
  return $self->{'unit'};
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

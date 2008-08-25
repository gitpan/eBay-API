#!/usr/bin/perl

package eBay::API::XML::Call::GetCategoryFeatures::GetCategoryFeaturesRequestType;

use strict;
use warnings;  

##########################################################################
#
# Module: ............... <user defined location>eBay/API/XML
# File: ................. GetCategoryFeaturesRequestType.pm
# Generated by: ......... genEBayApiDataTypes.pl
# Last Generated: ....... 08/24/2008 16:44
# API Release Number: ... 579
#
##########################################################################  

=head1 NAME

eBay::API::XML::Call::GetCategoryFeatures::GetCategoryFeaturesRequestType

=head1 DESCRIPTION

Returns information about certain features that are only applicable to
certain categories on the site.
<p>
Be sure to specify ViewAllNodes as true so that you get useful results.<br>
<br>
GetCategoryFeatures is not designed to return settings for every leaf
and parent category that exists in the category tree. It only returns settings
for nodes (sub-hierarchies) that are different from the SiteDefault,
or different from a given parent category's settings. In other words,
we use a "toggling" model to reduce the size of the response.
For example, if the SiteDefault setting for BestOfferEnabled is false,
it would mean most categories on the site don't support Best Offer,
and GetCategoryFeatures would only return the few categories where the
setting for BestOfferEnabled is true (if any).
</p>
<p>
Furthermore, if all of the leaf categories under a given parent category
have the same settings (such as BestOfferEnabled=true),
then GetCategoryFeatures only returns the highest-level parent category
with those same settings. This means the settings of that parent category are
inherited for all lower-level child categories down to the leaf categories.
(In theory, it is possible for this toggling behavior to occur more than
once as you drill down into lower levels of the tree. So you would need to
check whether any children that override the parent's settings are
also returned.)
</p>
<p>
Use GetCategories to retrieve information about the category hierarchy
(such as parent/child relationships) plus additional feature settings.
</p>



=head1 SYNOPSIS

=cut


=head1 INHERITANCE

eBay::API::XML::Call::GetCategoryFeatures::GetCategoryFeaturesRequestType inherits from the L<eBay::API::XML::RequestDataType> class

=cut

use eBay::API::XML::RequestDataType;
our @ISA = ("eBay::API::XML::RequestDataType");

use eBay::API::XML::DataType::Enum::FeatureIDCodeType;


my @gaProperties = ( [ 'CategoryID', 'xs:string', '', '', '' ]
	, [ 'FeatureID', 'ns:FeatureIDCodeType', '1'
	     ,'eBay::API::XML::DataType::Enum::FeatureIDCodeType', '' ]
	, [ 'LevelLimit', 'xs:int', '', '', '' ]
	, [ 'ViewAllNodes', 'xs:boolean', '', '', '' ]
                    );
push @gaProperties, @{eBay::API::XML::RequestDataType::getPropertiesList()};

my @gaAttributes = ( 
                    );
push @gaAttributes, @{eBay::API::XML::RequestDataType::getAttributesList()};

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



=head2 setCategoryID()

Defines one category for which you want feature settings.
If not specified, returns feature settings for all
categories on the site (assuming you set the DetailLevel
to ReturnAll and ViewAllNodes to true).

MaxLength: 10

  RequiredInput: No
#    Argument: 'xs:string'

=cut

sub setCategoryID {
  my $self = shift;
  $self->{'CategoryID'} = shift
}

=head2 getCategoryID()

#    Returns: 'xs:string'

=cut

sub getCategoryID {
  my $self = shift;
  return $self->{'CategoryID'};
}


=head2 setFeatureID()

Retrieves data related to the specified feature setting only.
If no feature IDs are specified, the call retrieves data for all
feature settings.

  RequiredInput: No
#    Argument: reference to an array  
                      of 'ns:FeatureIDCodeType'

=cut

sub setFeatureID {
  my $self = shift;
  $self->{'FeatureID'} = 
		$self->convertArray_To_RefToArrayIfNeeded(@_);
}

=head2 getFeatureID()

#    Returns: reference to an array  
                      of 'ns:FeatureIDCodeType'

=cut

sub getFeatureID {
  my $self = shift;
  return $self->_getDataTypeArray('FeatureID');
}


=head2 setLevelLimit()

A level of depth in the category hierarchy.
Retrieves all category nodes with a CategoryLevel less
than or equal to the LevelLimit value.

  RequiredInput: No
#    Argument: 'xs:int'

=cut

sub setLevelLimit {
  my $self = shift;
  $self->{'LevelLimit'} = shift
}

=head2 getLevelLimit()

#    Returns: 'xs:int'

=cut

sub getLevelLimit {
  my $self = shift;
  return $self->{'LevelLimit'};
}


=head2 setViewAllNodes()

Set this value to true to retrieve useful results.
If true, retrieves all categories that override the
site default settings.
(If false or not specified, only retrieves data about
leaf categories. If the details about overridden settings
are only defined on a category's ancestor, the call does
not return those settings if you only retrieve leaf categories.)

  RequiredInput: Conditionally
  Default: false
#    Argument: 'xs:boolean'

=cut

sub setViewAllNodes {
  my $self = shift;
  $self->{'ViewAllNodes'} = shift
}

=head2 isViewAllNodes()

#    Returns: 'xs:boolean'

=cut

sub isViewAllNodes {
  my $self = shift;
  return $self->{'ViewAllNodes'};
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




# Autogenerated by DBIx::SearchBuilder factory (by <jesse@bestpractical.com>)
# WARNING: THIS FILE IS AUTOGENERATED. ALL CHANGES TO THIS FILE WILL BE LOST.  
# 
# !! DO NOT EDIT THIS FILE !!
#


=head1 NAME

RT::FM::ClassCustomField


=head1 SYNOPSIS

=head1 DESCRIPTION

=head1 METHODS

=cut

package RT::FM::ClassCustomField;
use RT::FM::Record; 
use RT::FM::CustomField;
use RT::FM::Class;


use base qw( RT::FM::Record );

sub _Init {
  my $self = shift; 

  $self->Table('FM_ClassCustomFields');
  $self->SUPER::_Init(@_);
}





=item Create PARAMHASH

Create takes a hash of values and creates a row in the database:

  int(11) 'Class'.
  int(11) 'CustomField'.
  int(2) 'SortOrder'.

=cut




sub Create {
    my $self = shift;
    my %args = ( 
                Class => '0',
                CustomField => '0',
                SortOrder => '0',

		  @_);
    $self->SUPER::Create(
                         Class => $args{'Class'},
                         CustomField => $args{'CustomField'},
                         SortOrder => $args{'SortOrder'},
);

}



=item id

Returns the current value of id. 
(In the database, id is stored as int(11).)


=cut


=item Class

Returns the current value of Class. 
(In the database, Class is stored as int(11).)



=item SetClass VALUE


Set Class to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, Class will be stored as a int(11).)


=cut


=item ClassObj

Returns the Class Object which has the id returned by Class


=cut

sub ClassObj {
	my $self = shift;
	my $Class =  RT::FM::Class->new($self->CurrentUser);
	$Class->Load($self->Class());
	return($Class);
}

=item CustomField

Returns the current value of CustomField. 
(In the database, CustomField is stored as int(11).)



=item SetCustomField VALUE


Set CustomField to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, CustomField will be stored as a int(11).)


=cut


=item CustomFieldObj

Returns the CustomField Object which has the id returned by CustomField


=cut

sub CustomFieldObj {
	my $self = shift;
	my $CustomField =  RT::FM::CustomField->new($self->CurrentUser);
	$CustomField->Load($self->CustomField());
	return($CustomField);
}

=item Creator

Returns the current value of Creator. 
(In the database, Creator is stored as int(11).)


=cut


=item Created

Returns the current value of Created. 
(In the database, Created is stored as datetime.)


=cut


=item SortOrder

Returns the current value of SortOrder. 
(In the database, SortOrder is stored as int(2).)



=item SetSortOrder VALUE


Set SortOrder to VALUE. 
Returns (1, 'Status message') on success and (0, 'Error Message') on failure.
(In the database, SortOrder will be stored as a int(2).)


=cut


=item LastUpdatedBy

Returns the current value of LastUpdatedBy. 
(In the database, LastUpdatedBy is stored as int(11).)


=cut


=item LastUpdated

Returns the current value of LastUpdated. 
(In the database, LastUpdated is stored as datetime.)


=cut



sub _CoreAccessible {
    {
     
        id =>
		{read => 1, type => 'int(11)', default => ''},
        Class => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        CustomField => 
		{read => 1, write => 1, type => 'int(11)', default => '0'},
        Creator => 
		{read => 1, auto => 1, type => 'int(11)', default => '0'},
        Created => 
		{read => 1, auto => 1, type => 'datetime', default => ''},
        SortOrder => 
		{read => 1, write => 1, type => 'int(2)', default => '0'},
        LastUpdatedBy => 
		{read => 1, auto => 1, type => 'int(11)', default => '0'},
        LastUpdated => 
		{read => 1, auto => 1, type => 'datetime', default => ''},

 }
};


        eval "require RT::FM::ClassCustomField_Overlay";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };

        eval "require RT::FM::ClassCustomField_Local";
        if ($@ && $@ !~ /^Can't locate/) {
            die $@;
        };




=head1 SEE ALSO

This class allows "overlay" methods to be placed
into the following files _Overlay is for a System overlay by the original author,
while _Local is for site-local customizations.  

These overlay files can contain new subs or subs to replace existing subs in this module.

If you'll be working with perl 5.6.0 or greater, each of these files should begin with the line 

   no warnings qw(redefine);

so that perl does not kick and scream when you redefine a subroutine or variable in your overlay.

RT::FM::ClassCustomField_Overlay, RT::FM::ClassCustomField_Local

=cut


1;

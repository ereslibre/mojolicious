#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  my $user = $self->param('user');
  my $pass = $self->param('pass');
  $self->stash(user => $user);
  $self->render('user', pass => $pass);
};

app->start;

__DATA__

@@ user.html.ep
Username is <%= $user %> and Password is <%= $pass %><br/><br/>
Never try this at home ! Password through GET param can cause serious diseases.
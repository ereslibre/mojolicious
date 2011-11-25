#!/usr/bin/env perl
use Mojolicious::Lite;

get '/' => sub {
  my $self = shift;
  my $user = $self->param('user');
  $self->render(text => "Hello $user!");
};

app->start;
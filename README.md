singem
======

*S*inatra *G*em Generator

Installation
============

    % sudo gem install singem

Or build it yourself

    % rake repackage
    % rake install

Usage
=====

Basic Sinatra App, no sessions, cucumber testing
------------------------------------------------
    % singem foo
    % cd foo
    % gem bundle
    % bin/rake

Basic Twitter OAuth App,
------------------------------
    % singem --twitter foo
    % cd foo
    % gem bundle
    % rake
    % open http://twitter.com/oauth_clients

#!/home/ben/software/install/bin/perl
use warnings;
use strict;
use utf8;
use FindBin '$Bin';
use Deploy ':all';
my $verbose = 1;
my $site = 'benkasminbullock_portdemo2020@ssh.phx.nearlyfreespeech.net';
my @files = qw!run5678.sh run8765.sh portdemo2020.go Makefile!;
my $dir = '/home/protected';
do_scp ($site, "@files", $dir, $verbose);
do_ssh ($site, "cd $dir;make;chmod 0755 run*.sh", $verbose);

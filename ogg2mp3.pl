#!/usr/bin/perl

for my $file (@ARGV){
	print "Processing file $file\n";
	my $out = $file.".mp3";
	if ($file =~ /^(.+)\.ogg$/){ $out = "$1.mp3";}
	$out =~ s/\s+/_/g;
	#system("ffmpeg -qscale 8 -ab 196608 -i '$file' $out");
	system("ffmpeg -i '$file' '$out'");
}

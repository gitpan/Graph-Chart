#!/usr/bin/perl
use feature qw( say );
use strict;
use Data::Dumper;

use lib "./lib";
use Graph::Chart;

my $graph = Graph::Chart->new(
    size     => [ 800, 400 ],
    bg_color => '0xfffff0',
#    frame  => { color => '0xff00ff', thickness => 1 },
    border => [ 150,  80,            100,      100 ],
    grid   => {
        debord => [ 5, 20, 10, 30 ],
        x      => {
            color  => '0xff00ff',
            number => 5,
            label  => {
#                font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
                font  => '/usr/lib/cinelerra/fonts/trebucbi.ttf',
                color => '0xff0000',
                size  => 10,
                text  => [ 'toto', undef, 'truc', 'bazar', 122 ],
# 		space => 80,
                align    => 'right',
                rotation => 30,
            },
            label2 => {
                font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
                color => '0xff0000',
                size  => 10,
                text  => [ 'toto', undef, 'truc', 'bazar', 122 ],
                space => 50,
                align => 'right',
                 rotation => -30,
            },
        },
        y => {
            color     => '0x00fff0',
            number    => 8,
            thickness => 1,
            label     => {
#                 font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
                font               => '/usr/lib/cinelerra/fonts/trebuc.ttf',
                kerning_correction => 0.85,
                color              => '0xff0000',
                size               => 12,
                text               => [ 1000000, undef, '20', undef, 12256985, undef, 555 ],
# 		space => 10,
                rotation => 45,
# 		surround => { color => '0x0000ff' , thickness => 1 },
            },
#	     label2     => {
##                 font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
#		 font  => '/usr/lib/cinelerra/fonts/trebuc.ttf',
#		 kerning_correction => 0.85,
#                 color => '0xff0000',
#                 size  => 12,
#                 text  => [ 1000000, undef, '20', undef, 12256985, undef, 555 ],
# #		space => 10,
#                 rotation => 30,
#
# # 		surround => { color => '0x0000ff' , thickness => 1 },
#             }
          }

    },

#	reticle => { 
#	debord => 30,
#	color => '0xff0000',
#	number => 10,
#	label_middle => {
#		font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
##		kerning_correction => 0.85,
#		color => '0xff0000',
#                size  => 10,
##		space => 10,
##		rotate => 'follow',
#		rotate => 'perpendicular',
##		rotation => 30,
#                text => [70001231220,45,90,135,180,225,270,3150000 , 1 ,2],
#		},
##	label => {
##		font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
###		kerning_correction => 0.85,
##		color => '0xff0000',
##                size  => 12,
###		space => 10,
##		rotate => 'follow',
###		rotate => 'perpendicular',
###		rotation => 30,
##                text => [70001231220,45,90,135,180,225,270,3150000 , 1 ,2],
##		},	
#},

);

#$graph->reticle(
#{
#	label => {
#		font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
##		kerning_correction => 0.85,
#		color => '0xff0000',
#                size  => 12,
#		space => 40,
##		rotate => 'follow',
##		rotate => 'perpendicular',
#		rotation => 30,
#                text => [70001231220,45,90,135,180,225,270,3150000 , 1 ,2],
#		},}
#);

# $graph->frame( {color => '0xff0000', thickness => 4 });

# $graph->grid(
#     {
#         x => {
#             color  => '0xff00ff',
#             number => 5,
#             label  => {
#                 font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
#                 color => '0xff0000',
#                 size  => 10,
#                 text  => [ 'toto', undef, 'truc', 'bazar', 122 ]
#             }
#         }
#     }
# );

#$graph->grid(
#{
#         y => {
#             color     => '0x00fff0',
#             number    => 8,
#             thickness => 1,
#             label     => {
##                 font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
#		 font  => '/usr/lib/cinelerra/fonts/trebuc.ttf',
#		 kerning_correction => 0.85,
#                 color => '0xff0000',
#                 size  => 12,
#                 text  => [ 1000000, undef, '20', undef, 12256985, undef, 555 ],
## 		space => 10,
#                 rotation => 45,
# # 		surround => { color => '0x0000ff' , thickness => 1 },
#             },
#	     label2     => {
##                 font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
#		 font  => '/usr/lib/cinelerra/fonts/trebuc.ttf',
#		 kerning_correction => 0.85,
#                 color => '0xff0000',
#                 size  => 12,
#                 text  => [ 1000000, undef, '20', undef, 12256985, undef, 555 ],
# #		space => 10,
#                 rotation => 30,
#
# # 		surround => { color => '0x0000ff' , thickness => 1 },
#             }
#	     },
#	     x      => {
#            color  => '0xff00ff',
#            number => 5,
#            label  => {
##                font  => '/usr/lib/cinelerra/fonts/lucon.ttf',
#		font  => '/usr/lib/cinelerra/fonts/trebucbi.ttf',
#                color => '0xff0000',
#                size  => 10,
#                text  => [ 'bazar', 123, 'crut', 'much', 0 ],
## 		space => 80,
#		align => 'right',
#                 rotation => 30,
#            }
#         }
#
#}
#);

my @dot;
$#dot = 9;

for my $ind ( 0 .. 400 )
{

    $dot[$ind] = rand( 300 );
#$dot[$ind] = $ind;
#$dot[$ind] = 50+rand( 100 );
}
#@dot = (45);
#$graph->data(
#    {
#        layer => 10,
#        set   => \@dot,
#        type  => 'line',
#	bar_size => 1,
#        color => '0x0000ff',
#	thickness => 1,
##	scale => 0.6,
#        scale => 1.1,
##        scale => 'auto',
#    }
#);
my @dot1;
#$#dot1 = 19;

for my $ind ( 180 .. 360 )
{

#    $dot1[$ind] = rand( 200 );
#$dot1[$ind] = $ind;
#$dot1[$ind] = 50 +rand( 200 );
$dot1[$ind] =  90 + (90 * ( sin( ( $ind / 30 ) * 3.14159)));
#say "$ind = ".$dot1[$ind] ;
}
#@dot1=( 270 );
$graph->data(
    {
        layer => 4,
        set   => \@dot1,
        type  => 'radial',
	bar_size => 1,
        color => '0x00ff00',
	thickness => 1,
#	offset   => 200,
#	scale => 1,
#        scale => 1.1,
        scale => 'auto',
    }
);

#$graph->data(
#    {
#        layer => 0,
#        set   => \@dot,
#        type  => 'line',
#	bar_size => 1,
#        color => '0xff0000',
#	thickness => 5,
##        scale => 1.1,
##        scale => 'auto',
#    }
#);
my @alarm;
for ( 90 .. 180  )
{
$alarm[ $_  ] = 1;

}


$graph->overlay(
{
	layer => 1,
	set   => \@alarm,
	color => '0xFFFECE',	
#	color => '0xFFD2D2',
	opacity => 100,
	type => 'pie',
	merge  => 1,
#	debord => 50,
}
);

my @alarm1;
for ( 100 .. 250 )
{
$alarm1[ $_  ] = 1;

}


$graph->overlay(
{
	layer => 0,
	set   => \@alarm1,
	color => '0xFFD2D2',
	opacity => 100,
	merge  => 0,
	type => 'pie',
}
);


my $png_out = $graph->render( { tag => { toto => 'azerty' , si => 100 } });
#my $png_out = $graph->render( );
write_png( $png_out, '/tmp/img.png' );
my $png_out1 =$graph->png_zEXt( { eerer => 1, ggg => 'zed' } );
write_png( $png_out1, '/tmp/img.png' );

# $graph->size( [ 500, 300 ] );
# $graph->bg_color('00ffff');
#
#
# my $png_out1 = $graph->render;
# write_png( $png_out1, '/tmp/img1.png' );

# say Dumper($png_out);

sub write_png
{
    my $out  = shift;
    my $file = shift;
    open( my $IMG, '>', $file ) or die $!;
    binmode $IMG;
    print $IMG $out;
    close $IMG;

}

package DDG::Spice::Imdb;
# ABSTRACT
# ABSTRACT: Give a summary of the movie from its IMDB page.

use DDG::Spice;

primary_example_queries "IMDb shawshank redemption";
description "Display movie information from IMDB";
name "Imdb";
code_url "https://github.com/duckduckgo/zeroclickinfo-spice/blob/master/lib/DDG/Spice/Imdb.pm";
icon_url "/i/www.imdb.com.ico";
topics "entertainment";
category "entertainment";
attribution github => ['https://github.com/viswanathgs','viswanathgs'];

triggers startend => "imdb";

spice to => 'http://www.imdbapi.com/?t=$1&callback={{callback}}';

handle remainder => sub {
    return $_ if $_;
    return;
};

1;

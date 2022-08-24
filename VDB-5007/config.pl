sub SDL_LOCATION { 's3' }
sub NATIVE_TOOL_NAME { 'aws' }
sub NATIVE_TOOL_CMD { 'aws s3 cp' }
sub NATIVE_TOOL_URL {
    $_ =~ qr{^https://([^.]+)\.s3\.([^.]+\.)?amazonaws\.com/(.+)$}i
    ? { 'url' => "s3://$1/$3", 'region' => $2 }
    : undef
}
sub NATIVE_TOOL_COPY_CMD {
    my @y = qw[ aws s3 cp ];
    push @y, '--source-region', $_[0]->{'region'} if $_[0]->{'region'};
    push @y, $_[0]->{'url'}, './';
    @y
}

{
    SDL_LOCATION => 's3',
    NATIVE_TOOL_NAME => 'aws',
    NATIVE_TOOL_CMD => 'aws s3 cp',
    NATIVE_TOOL_URL => sub {
        $_ =~ qr{^https://([^.]+)\.s3\.([^.]+\.)?amazonaws\.com/(.+)$}i
        ? { 'url' => "s3://$1/$3", 'region' => $2 }
        : undef
    },
    NATIVE_TOOL_COPY_CMD => sub {
        my @y = qw[ aws s3 cp --no-sign-request ];
        push @y, '--source-region', $_[0]->{'region'} if $_[0]->{'region'};
        push @y, $_[0]->{'url'}, './';
        @y
    }
}

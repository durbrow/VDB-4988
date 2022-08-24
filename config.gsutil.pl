{
    SDL_LOCATION => 'gs',
    NATIVE_TOOL_NAME => 'gsutil',
    NATIVE_TOOL_CMD => 'gsutil cp',
    NATIVE_TOOL_URL => sub { $_ =~ qr{^https://storage\.googleapis\.com/(.+)$}i ? "gs://$1" : undef },
    NATIVE_TOOL_COPY_CMD => sub { ('gsutil', 'cp', $_[0], './') }
}

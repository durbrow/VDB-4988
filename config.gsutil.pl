{
    SDL_LOCATION => 'gs',
    NATIVE_TOOL_NAME => 'gsutil',
    NATIVE_TOOL_CMD => 'gsutil cp',
    NATIVE_TOOL_COPY_CMD => sub { ('gsutil', 'cp', $_[0]->{'url'}, './') }
}

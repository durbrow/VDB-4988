sub SDL_LOCATION { 'gs' }
sub NATIVE_TOOL_NAME { 'gsutil' }
sub NATIVE_TOOL_CMD { 'gsutil cp' }
sub NATIVE_TOOL_URL { $_ =~ qr{^https://storage\.googleapis\.com/(.+)$}i ? "gs://$1" : undef }
sub NATIVE_TOOL_COPY_CMD { ('gsutil', 'cp', $_[0], './') }

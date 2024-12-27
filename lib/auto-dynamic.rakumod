my sub DYNAMIC(str $key) is raw is export {
    state %LOCAL;
    my \value = %LOCAL{$key} // &CORE::DYNAMIC($key);

    if value ~~ Failure {
        my str $sigil = $key.substr(0,1);
        %LOCAL{$key} := $sigil eq '@'
          ?? []
          !! $sigil eq '%'
            ?? %()
            !! $sigil eq '&'
              ?? (my Callable $)
              !! (my $)
    }
    else {
        value
    }
}

# vim: expandtab shiftwidth=4

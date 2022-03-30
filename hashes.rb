sample_hash = {
    a: 'boy',
    b: 'boys',
    c: 'man',
    d: 'men',
    e: 1,
    f: 9.0,
    g: [1,2,3,4,5],
    h: {}
}


go = sample_hash.select {
    |key, value| value.is_a?(Integer)
}

puts go
puts sample_hash

function! SectionHeader#SectionHeader(htext)
    let width = 60
    let smallhash = repeat('#',3)
    let header_text = ' ' . a:htext . ' '
    let word_width = strlen(header_text)
    let length_before = (width - word_width) / 2
    let hashes_before = smallhash . repeat(' ', length_before-3)
    let hashes_after = repeat(' ', width - (word_width + length_before) - 3) . smallhash
    let hash_line = repeat('#',width)
    let placeholder = smallhash . repeat(' ', width - 6) . smallhash
    let word_line = hashes_before . header_text . hashes_after
    
    :put =hash_line
    :put =placeholder
    :put =word_line
    :put =placeholder
    :put =hash_line
endfunction


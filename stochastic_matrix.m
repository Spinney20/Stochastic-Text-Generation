function retval = stochastic_matrix(k_secv_corpus, corpus_words, word_set, k_secv_set, k)
    % init as sparse
    a = length(k_secv_set);
    b = length(word_set);
    retval = sparse(a, b);

    k_secv_map = k_secv_idx(k_secv_set);
    word_map = word_idx(word_set);

    % for each k seq in the corpus
    for i = 1:(length(corpus_words) - k)
        %if k seq exist in the set and next word exists in the set
        % apply the functions + incr the val
        %idk why i have a timeouto on the last test idk how I could ve done
        % this better :/
        k_seq_idx = k_secv_map(k_secv_corpus{i});
        word_idx = word_map(corpus_words{i + k});
        retval(k_seq_idx, word_idx) = retval(k_seq_idx, word_idx) + 1;
    endfor
end

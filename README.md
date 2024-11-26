STOCHASTIC TEXT GEN

- distinct_k_secv.m - This function extracts unique sequences from an array of
sequences, removing duplicates to ensure a distinct set of sequences for
further data analysis or processing in the future of this task

- distinct_words.m - Returns an array of unique words from a given word array
we do this to simulate natural language (i think)

- k_secv_idx.m - Creates a dictionary that maps each unique k-sequence to a
unique numeric index, facilitating fast access and efficiency in handling
seqvences

- k_secv.m - Generates an array of k-sequences from an array of tokens
with each sequence consisting of k consecutive tokens

- word_idx.m - Creates a dictionary that assigns each unique word a numeric
index, similar to k_secv_idx.m but specifically for words.

In the end, all this functions help us build stochastic_matrix.m in which we
construct a stochastic matrix based on k-sequences and associated words, u
sing indexing from k_secv_idx.m and word_idx.m to
align sequences with their corresponding probabilities.

function B = k_secv (A, k)
  % given an array [a b a b c] and k=2
  % should return [ab ba ab bc]
  % HINT: use strjoin

  [nr_seqs] = size(A, 1);
  B = cell(nr_seqs - k, 1);

  %strjoin for k in nr_seqs
  for i = 1:nr_seqs - k
    B{i} = strjoin(A(i:i+k-1));
  endfor
endfunction

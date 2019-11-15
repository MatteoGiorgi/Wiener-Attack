r = 4; Dl = 2; (*da regolare in base alle esigenze del caso*)
CClist = Partition[Rest[cList],2,1];
UVlist = Tuples[Range[2^r],2];
T = Tuples[{CClist,UVlist}];
phiList = Floor[
  e(T[[2,1]]Denominator[T[[1,2]]]+(T[[2,1]]Dl+T[[2,2]])Denominator[T[[1,1]]])/
   (T[[2,1]] Numerator[T[[1,2]]]+(T[[2,1]]Dl+T[[2,2]])Numerator[T[[1,1]]])];
 

primes = Flatten[checkL /@ (phiList-m /. {m->#}& /@ Range[0,9])];


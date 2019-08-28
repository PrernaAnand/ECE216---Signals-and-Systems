function [compressionRate] = calculateCompressionRate( M, N, numDiscardedCoeficients )
    %64 + 64 bits per complex fourier coeficient of type double
    originalSize = 128*M*N;
    
    %use the minority = if lesser compression rate = lesser 0s, so do this
    %otherwise 
    newSize = 128*(M*N - numDiscardedCoeficients) + ceil(numDiscardedCoeficients*log2(M*N)) + ceil(log2(M*N));
    
    compressionRate = newSize/originalSize;
end
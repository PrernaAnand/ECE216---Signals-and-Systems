function [ fourierSeriesCoeficients ] = DiscreteTimeFourierSeries2D( timeMatrix )
    %preallocate the transform matrix
    [M,N] = size(timeMatrix);
    fourierSeriesCoeficients = zeros(M,N);
    
    
    for l = 0 : M-1 %loop through the row requencies
        for k = 0 : N-1 %loop through the column frequencies
            %Calculate the inner product of timeMatrix onto the Fourier
            %basis vector with row frequency l and column frequency k.
            
            %This Fourier basis vector can be obtained by calling
            %FourierBasisVector2D( l, k, M, N ).
            
            %In order to calculate the inner product you may want to use
            %MATLAB's vector functionality. If you aren't comfortable with
            %this, just use two for loops.
            
            %You will need to use the conj() function
            
            %WRITE YOUR CODE HERE
            basisVector = FourierBasisVector2D(l, k, M, N );
            fourierSeriesCoeficients(k+1, l+1) = sum(dot(timeMatrix,conj(basisVector)));
        end
    end
end
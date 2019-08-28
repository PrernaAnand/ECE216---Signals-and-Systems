function [ basisVector ] = FourierBasisVector2D(l, k, M, N )
    
    basisVector = zeros(M,N); %preallocate the array we need
    j = 1i;
    
    %Write the rest of the code nessecary to complete the basisVector
    %Matrix. The 2D complex exponential definition in your lab manual
    %will help with this.
    for m=0:M-1
        for n=0:N-1
            basisVector(m+1,n+1) = exp(2*pi*j*(k*n/N + l*m/M));
            %This vector contains the angles the signal is projected onto
            %i.e.: The basis.
        end
    end
end


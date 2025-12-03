function y = ForSub(L,b)
    n = size(L,1);
    y = zeros(n,1);

    y(1) = b(1);

    for i = 2:n
        for j = 1:i-1
            y(i) = y(i)+L(i,j)*y(j);
        end

        y(i) = b(i)-y(i);
    end
end
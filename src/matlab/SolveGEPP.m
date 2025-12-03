function x = SolveGEPP(A,b,TOL)
    [L,U,P] = GEPP(A,TOL);
    y = ForSub(L,P*b);
    x = BackSub(U,y);
end
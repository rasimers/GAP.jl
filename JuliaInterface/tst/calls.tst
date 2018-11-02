##
gap> START_TEST( "calls.tst" );

#
# calls without function wrapping
#

# variadic function
gap> f := JuliaEvalString("function f(x...) return x end");;

#
gap> f();
<Julia: ()>

#
gap> f(true);
<Julia: (true,)>

#
gap> f(true,2);
<Julia: (true, 2)>

#
gap> f(true,2,3);
<Julia: (true, 2, 3)>

#
gap> f(true,2,3,4);
<Julia: (true, 2, 3, 4)>

#
gap> f(true,2,3,4,5);
<Julia: (true, 2, 3, 4, 5)>

#
gap> f(true,2,3,4,5,6);
<Julia: (true, 2, 3, 4, 5, 6)>

#
gap> f(true,2,3,4,5,6,7);
<Julia: (true, 2, 3, 4, 5, 6, 7)>

# non-variadic functions
gap> f0 := JuliaEvalString("function f0() end");;
gap> f1 := JuliaEvalString("function f1(a) return (a,) end");;
gap> f2 := JuliaEvalString("function f2(a,b) return (a,b) end");;
gap> f3 := JuliaEvalString("function f3(a,b,c) return (a,b,c) end");;
gap> f4 := JuliaEvalString("function f4(a,b,c,d) return (a,b,c,d) end");;
gap> f5 := JuliaEvalString("function f5(a,b,c,d,e) return (a,b,c,d,e) end");;
gap> f6 := JuliaEvalString("function f6(a,b,c,d,e,f) return (a,b,c,d,e,f) end");;
gap> f7 := JuliaEvalString("function f7(a,b,c,d,e,f,g) return (a,b,c,d,e,f,g) end");;

#
gap> f0();
<Julia: nothing>

#
gap> f1(true);
<Julia: (true,)>

#
gap> f2(true,2);
<Julia: (true, 2)>

#
gap> f3(true,2,3);
<Julia: (true, 2, 3)>

#
gap> f4(true,2,3,4);
<Julia: (true, 2, 3, 4)>

#
gap> f5(true,2,3,4,5);
<Julia: (true, 2, 3, 4, 5)>

#
gap> f6(true,2,3,4,5,6);
<Julia: (true, 2, 3, 4, 5, 6)>

#
gap> f7(true,2,3,4,5,6,7);
<Julia: (true, 2, 3, 4, 5, 6, 7)>

#
# calls via function wrappers
#

# variadic function
gap> fw := JuliaFunction("f");;

#
gap> fw();
<Julia: ()>

#
gap> fw(true);
<Julia: (true,)>

#
gap> fw(true,2);
<Julia: (true, 2)>

#
gap> fw(true,2,3);
<Julia: (true, 2, 3)>

#
gap> fw(true,2,3,4);
<Julia: (true, 2, 3, 4)>

#
gap> fw(true,2,3,4,5);
<Julia: (true, 2, 3, 4, 5)>

#
gap> fw(true,2,3,4,5,6);
<Julia: (true, 2, 3, 4, 5, 6)>

#
gap> fw(true,2,3,4,5,6,7);
<Julia: (true, 2, 3, 4, 5, 6, 7)>

# non-variadic functions
gap> f0w := JuliaFunction("f0");;
gap> f1w := JuliaFunction("f1");;
gap> f2w := JuliaFunction("f2");;
gap> f3w := JuliaFunction("f3");;
gap> f4w := JuliaFunction("f4");;
gap> f5w := JuliaFunction("f5");;
gap> f6w := JuliaFunction("f6");;
gap> f7w := JuliaFunction("f7");;

#
gap> f0w();
<Julia: nothing>

#
gap> f1w(true);
<Julia: (true,)>

#
gap> f2w(true,2);
<Julia: (true, 2)>

#
gap> f3w(true,2,3);
<Julia: (true, 2, 3)>

#
gap> f4w(true,2,3,4);
<Julia: (true, 2, 3, 4)>

#
gap> f5w(true,2,3,4,5);
<Julia: (true, 2, 3, 4, 5)>

#
gap> f6w(true,2,3,4,5,6);
<Julia: (true, 2, 3, 4, 5, 6)>

#
gap> f7w(true,2,3,4,5,6,7);
<Julia: (true, 2, 3, 4, 5, 6, 7)>

#
# calls via function wrappers, auto conversion turned off
#

# variadic function
gap> fwN := _JuliaFunction("f", false);;

#
gap> fwN();
<Julia: ()>

#
gap> fwN(true);
<Julia: (GAP: true,)>

#
gap> fwN(true,2);
<Julia: (GAP: true, 2)>

#
gap> fwN(true,2,3);
<Julia: (GAP: true, 2, 3)>

#
gap> fwN(true,2,3,4);
<Julia: (GAP: true, 2, 3, 4)>

#
gap> fwN(true,2,3,4,5);
<Julia: (GAP: true, 2, 3, 4, 5)>

#
gap> fwN(true,2,3,4,5,6);
<Julia: (GAP: true, 2, 3, 4, 5, 6)>

#
gap> fwN(true,2,3,4,5,6,7);
<Julia: (GAP: true, 2, 3, 4, 5, 6, 7)>

# non-variadic functions
gap> f0wN := _JuliaFunction("f0", false);;
gap> f1wN := _JuliaFunction("f1", false);;
gap> f2wN := _JuliaFunction("f2", false);;
gap> f3wN := _JuliaFunction("f3", false);;
gap> f4wN := _JuliaFunction("f4", false);;
gap> f5wN := _JuliaFunction("f5", false);;
gap> f6wN := _JuliaFunction("f6", false);;
gap> f7wN := _JuliaFunction("f7", false);;

#
gap> f0wN();
<Julia: nothing>

#
gap> f1wN(true);
<Julia: (GAP: true,)>

#
gap> f2wN(true,2);
<Julia: (GAP: true, 2)>

#
gap> f3wN(true,2,3);
<Julia: (GAP: true, 2, 3)>

#
gap> f4wN(true,2,3,4);
<Julia: (GAP: true, 2, 3, 4)>

#
gap> f5wN(true,2,3,4,5);
<Julia: (GAP: true, 2, 3, 4, 5)>

#
gap> f6wN(true,2,3,4,5,6);
<Julia: (GAP: true, 2, 3, 4, 5, 6)>

#
gap> f7wN(true,2,3,4,5,6,7);
<Julia: (GAP: true, 2, 3, 4, 5, 6, 7)>

#
# calls via wrapped C function pointers
#

#
gap> g0 := JuliaEvalString("function g0() return C_NULL end");;
gap> g1 := JuliaEvalString("function g1(a) return a end");;
gap> g2 := JuliaEvalString("function g2(a,b) return b end");;
gap> g3 := JuliaEvalString("function g3(a,b,c) return c end");;
gap> g4 := JuliaEvalString("function g4(a,b,c,d) return d end");;
gap> g5 := JuliaEvalString("function g5(a,b,c,d,e) return e end");;
gap> g6 := JuliaEvalString("function g6(a,b,c,d,e,f) return f end");;
gap> g7 := JuliaEvalString("function g7(a,b,c,d,e,f,g) return g end");;

#
gap> g0C := JuliaBindCFunction("g0", "");
function(  ) ... end
gap> g1C := JuliaBindCFunction("g1", "a");
function( a ) ... end
gap> g2C := JuliaBindCFunction("g2", "a,b");
function( a, b ) ... end
gap> g3C := JuliaBindCFunction("g3", "a,b,c");
function( a, b, c ) ... end
gap> g4C := JuliaBindCFunction("g4", "a,b,c,d");
function( a, b, c, d ) ... end
gap> g5C := JuliaBindCFunction("g5", "a,b,c,d,e");
function( a, b, c, d, e ) ... end
gap> g6C := JuliaBindCFunction("g6", "a,b,c,d,e,f");
function( a, b, c, d, e, f ) ... end
gap> g7C := JuliaBindCFunction("g7", "a,b,c,d,e,f,g");
Error, Only 0-6 arguments are supported

#
gap> g0();
<Julia: Ptr{Nothing} @0x0000000000000000>
gap> g1(true);
<Julia: true>
gap> g2(true,2);
<Julia: 2>
gap> g3(true,2,3);
<Julia: 3>
gap> g4(true,2,3,4);
<Julia: 4>
gap> g5(true,2,3,4,5);
<Julia: 5>
gap> g6(true,2,3,4,5,6);
<Julia: 6>

#
gap> g0C();
gap> g1C(true);
true
gap> g2C(true,2);
2
gap> g3C(true,2,3);
3
gap> g4C(true,2,3,4);
4
gap> g5C(true,2,3,4,5);
5
gap> g6C(true,2,3,4,5,6);
6

#
gap> h0 := JuliaEvalString("function h0() end");;
gap> h1 := JuliaEvalString("function h1(a) end");;
gap> h2 := JuliaEvalString("function h2(a,b) end");;
gap> h3 := JuliaEvalString("function h3(a,b,c) end");;
gap> h4 := JuliaEvalString("function h4(a,b,c,d) end");;
gap> h5 := JuliaEvalString("function h5(a,b,c,d,e) end");;
gap> h6 := JuliaEvalString("function h6(a,b,c,d,e,f) end");;

#
gap> h0C := JuliaBindCFunction("h0", "");;
gap> h1C := JuliaBindCFunction("h1", "a");;
gap> h2C := JuliaBindCFunction("h2", "a,b");;
gap> h3C := JuliaBindCFunction("h3", "a,b,c");;
gap> h4C := JuliaBindCFunction("h4", "a,b,c,d");;
gap> h5C := JuliaBindCFunction("h5", "a,b,c,d,e");;
gap> h6C := JuliaBindCFunction("h6", "a,b,c,d,e,f");;

#
gap> h0C();
Error, TypeError: in h0, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h1C(true);
Error, TypeError: in h1, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h2C(true,2);
Error, TypeError: in h2, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h3C(true,2,3);
Error, TypeError: in h3, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h4C(true,2,3,4);
Error, TypeError: in h4, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h5C(true,2,3,4,5);
Error, TypeError: in h5, in cfunction, expected Ptr{Nothing}, got Nothing
gap> h6C(true,2,3,4,5,6);
Error, TypeError: in h6, in cfunction, expected Ptr{Nothing}, got Nothing

#
gap> STOP_TEST( "calls.tst", 1 );
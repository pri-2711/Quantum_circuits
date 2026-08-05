OPENQASM 3.0;
include "stdgates.inc";
// base for Grover's Algorithm 
qubit[2] q;
bit[2] c;
h q[0];
h q[1];
x q[0];
x q[1];
cz q[0], q[1];
x q[0];
x q[1];
h q[0];
h q[1];
c = measure q;

// redistributes amplitudes
// Diffusion operator : reflects every amplitude about avg amplitude
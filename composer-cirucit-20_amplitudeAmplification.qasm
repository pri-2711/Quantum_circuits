OPENQASM 3.0;
include "stdgates.inc";

qubit[2] q;
bit[2] c;

h q[0];
h q[1];

//applying Phase oracle - result state's phase is flipped
x q[1];
cz q[0], q[1];
x q[1];

//applying Diffusion Operator - hidden phase difference -> larger probability
cz q[0], q[1];
h q[0];
h q[1];
x q[0];
x q[1];

// repeating of operations causes Amplitude amplificaiton 
cz q[0], q[1];
x q[0];
x q[1];
h q[0];
h q[1];
measure q[0] -> c[0];
measure q[1] -> c[1];

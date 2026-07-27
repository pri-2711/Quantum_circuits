OPENQASM 2.0;
include "qelib1.inc";

qreg q[6];
creg c[6];

//q0,q1,q2 = input register
//q3,q4,q5 = output register

h q[0];
h q[1];
h q[2];

// ORACLE FUNCTION
//f(x)= (x1,x2)

cx q[1], q[4];
cx q[2], q[5];

// measuring output registers
measure q[3] -> c[3];
measure q[4] -> c[4];
measure q[5] -> c[5];

h q[0];
h q[1];
h q[2];

// measuring input registers
measure q[0] -> c[0];
measure q[1] -> c[1];
measure q[2] -> c[2];
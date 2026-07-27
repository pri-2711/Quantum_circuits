OPENQASM 2.0;
include "qelib1.inc";

qreg q[4];
creg c[3];
x q[3];
h q[2];
h q[1];
h q[0];
h q[3];
h q[1];
ccx q[0], q[2], q[3];
x q[3];
h q[2];
h q[0];
measure q[0] -> c[0];
measure q[1] -> c[1];

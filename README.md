# QUANTUM ENTANGLEMENT (2-Qubit System)

Entanglement is represented using **Bell States**.

Circuits:

Perfect Correlation: 6 (phi +), 7 (phi -)

Perfect Anti-correlation: 8 (psi +), 9 (psi -)
---

## **1. Φ⁺ (Phi-plus)**

**Formula:**  
<img width="130" height="40" alt="image" src="https://github.com/user-attachments/assets/e3ed1797-92c7-4aef-b95e-64f15588d4ca" />

**Nature:**  
Perfect correlation → measurements are always the same (**00** or **11**).

---

## **2. Φ⁻ (Phi-minus)**

**Formula:**  
<img width="130" height="40" alt="image" src="https://github.com/user-attachments/assets/60c07fae-986d-497d-8e16-dbf6edaa84cd" />

**Nature:**  
Perfect correlation + phase shift → same outcomes (**00**, **11**), but negative phase changes interference behavior.

---

## **3. Ψ⁺ (Psi-plus)**

**Formula:**  
<img width="130" height="40" alt="image" src="https://github.com/user-attachments/assets/bdee78bd-6f6f-41c1-80b1-a84e257f9379" />

**Nature:**  
Perfect anti-correlation → measurements are always opposite (**01** or **10**).

---

## **4. Ψ⁻ (Psi-minus)**

**Formula:**  
<img width="130" height="40" alt="image" src="https://github.com/user-attachments/assets/c64f8e03-d0cd-4d10-a7ce-e73cfe85a7c3" />

**Nature:**  
Perfect anti-correlation + phase shift → opposite outcomes (**01**, **10**) with negative phase affecting interference.

---
# QUANTUM ENTANGLEMENT (3-Qubit System)

Circuit: 10 (GHZ state for 3 qubits)

**GHZ States**- (Greenberger-Horne-Zeilinger states) represent type of multi-quvit entangled state, ususally 3 or more qubits, hence show entanglement shared across all qubits together.
These states are more fraglie since measuring or loosing 1 qubit can destory entanglement of whole system.
They demonstrate **Global Correlations**, showing full anti-correlation is impossible.

---
# QUANTUM TELEPORTATION (3-Qubit System)

Circuit: 11 (teleportation using 3 qubits)

Transfers a quantum state using **entanglement + classical bits**.

---

## 1. Prepare Message State
Apply:

```text
H(q₀)
```

State:

<img width="120" height="40" alt="image" src="https://latex.codecogs.com/png.latex?\frac{|0\rangle+|1\rangle}{\sqrt2}" />

**Nature:** Creates state ψ to teleport.

---

## 2. Create Entangled Pair
Apply:

```text
H(q₁) → CNOT(q₁→q₂)
```

**Nature:** Forms Bell pair between q₁ and q₂.

---

## 3. Encode Message
Apply:

```text
CNOT(q₀→q₁)
H(q₀)
```

**Nature:** Mixes message with entangled system.

---

## 4. Measure
Measure:

```text
q₀, q₁ → 00 / 01 / 10 / 11
```

**Nature:** Produces 2 classical bits.

---

## 5. Send & Correct
Possible corrections on q₂:

```text
00 → I
01 → X
10 → Z
11 → XZ
```

**Nature:** Recovers original state ψ.

---

## Final

```text
Initial:
q₀ = ψ
q₂ = |0⟩

Final:
q₀ → measured
q₂ = ψ
```

**Nature:** State transferred; original destroyed (**No-Cloning preserved**).

---
# DEUTSCH ALGORITHM (2-Qubit System)

Circuit: 12
First quantum algorithm showing **quantum speedup**.

---

## **Purpose**

Determines whether a hidden function is:

```text
Constant  → same outputs
Balanced  → different outputs
```

using only **1 oracle query** through **superposition + interference**.

---

## **Classical vs Quantum**

### **Classical**

```text
Need f(0) and f(1)
→ 2 evaluations
```

### **Quantum**

Processes both inputs simultaneously using superposition.

---

## **1. Initial State**

```text
q₀ = |0⟩
q₁ = |1⟩
```

Apply:

```text
H(q₀)
X(q₁)
H(q₁)
```

State:

```text
q₀ → (|0⟩ + |1⟩)/√2
q₁ → (|0⟩ - |1⟩)/√2
```

**Nature:**
Creates superposition of both inputs.

---

## **2. Oracle (Uf)**

Oracle:

```text
Uf|x,y⟩ = |x, y⊕f(x)⟩
```

For balanced function:

```text
f(x)=x
```

Oracle becomes:

```text
CNOT(q₀ → q₁)
```

**Nature:**
Encodes function using phase kickback.

---

## **3. Interference**

Apply:

```text
H(q₀)
```

**Nature:**
Interference removes wrong possibilities and keeps correct result.

---

## **4. Measurement**

Measure:

```text
q₀
```

Result:

```text
0 → Constant
1 → Balanced
```

---

## **Final**

```text
Classical → 2 evaluations
Quantum   → 1 oracle query
```

**Nature:**
Shows how quantum computers use **superposition + interference** for faster computation.

---

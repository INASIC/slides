---
title: Neural-netowrk operator
subtitle: A machine learning version of Matrix Product Operator
author: Roger Luo
...


# (Deep) Neural-network Quantum Operator

---

## Why we need a (D)NQO?

> - Currently, the cost of sampling to gain desire gradient and energy information is costy because of **large sampling space**. 
> - We cannot write a neural-network quantum state in the form of tensor networks for sampling
> - There is no need to sampling an energy in the whole space: Our state is represented in the form of NQS. 
> - Deep is better than wider. Larger gradient while training.

---

A (D)NQO based algorithm proposal: Use a neural-network to approximate a Hamiltonian $H(W, \Theta)$, where $W$ is a NQS parameter, which is a one-to-one map between parameter space and state space, $\Theta$ is the parameter for Hamiltonian network.

---

 1. **Generate Data** Random generate $W$ to get a random neural-network quantum state: $|\Psi(W)\rangle$
 2. **Train NQO(Neural-network quantum operator) network** 
    1. **Generate A Data Set** Label all the NQS parameter $W_i$ with its energy $E_i$, gradient $\partial E$ and etc. by metropolis sampling 
    2. **Data Set** A labeled data set $(W, E)$, where $E$ is the energy sampled from Hamiltonian $H$

---

**Advantage**:

1. Abundant neural nets can be choosen for the task
2. Possible candidates like DBM and GAN could reduce the error costed by noise
3. A NQO can be used for different task in the framework of NQS with a single network for tasks (in science case, its a RBM)
4. High degree of parallelism in sampling

(*Proabably we will toatally abandon the language of tensor nets under the framework of NQS*)


---


# Train a NQS with (D)NQO

---

1. Generate an initial (D)NQO $NQO(W, \Theta)$ with a large data set to minimize $||NQO(W_i, \Theta) - \langle\Psi(W_i)|H|\Psi(W_i)\rangle||$, where W is randomly generated by a uniform distribution and the corresponding energy is generated by a metropolis sampling $\langle\Psi(W_i)|H|\Psi(W_i)\rangle$

---


2. **Move state** Evolute NQS parameters $W$ to minimize $||-\frac{d|\Psi(s, W)\rangle}{d(it)} - H |\Psi(s, W)||$ (Science algorithm)

---

3. **Expand dataset** the agent should observe its environment while learning, which means we should update our **NQO** while training, a possible strategy:
    - randomly insert $p$ training steps with sampling in training schedule
    - move according the schedule, and memorize sampling result in the data pool
    - after $k$ steps, randomly pick a mini-batch from the data pool to renew the **NQO network**

---

4. **goto 2**

---


**Advantage**:

- make use of **all the sampling results**
- other advantage mentioned in NQO part
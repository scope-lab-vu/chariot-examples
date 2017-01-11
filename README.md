# Introduction

**Pre-req**: Please visit [this](https://github.com/visor-vu/chariot) repository before advancing below to install the design-time and runtime artifacts.

This repository contains examples of different systems modeled using the [CHARIOT-ML](https://github.com/visor-vu/chariot) (Modeling Language). Following list summarizes these examples:

1. **HelloWorld**: This example models a simple two objective system without any replication constraints. Instantiation of this system results in deployment of three components, each of different type; one component that periodically sends greeting message, another component that receives greeting message and queries for time after receiving each message, and another component that acts as a time server by serving synchronous time requests.

  *NOTE: Current implementation of CHARIOT-ML does not fully support modeling of component business logic. Therefore, most of the examples in this repository are modeled using external components, i.e., a component's business logic is treated as a black box at design-time. However, to showcase a possible approach, CHARIOT-ML partially implements the concept of CHARIOT components that provides fine-grained control for modeling component behavior and execution. CHARIOT components are partially implemented because although they can be modeled, the design-time interpreter ignores them completely. In this example, each of the aformentioned three components are modeled both as external components and CHARIOT components.*
  
2. **Orbiter**:

3. **SmartParkingBasic**: This example models a simple smart parking system that consists of two objectives and two replication constraints. Since this system contains a *per node* replication constraint, the exact number of components deployed upon system instantiation is not constant and rather depends on the number of available nodes associated with the *per node* replication constraint. Although the exact number of components deployed depends on the number of nodes available, this example comprises three different types of components; one component type that requests for parking space, another component type that keeps track of available parking spaces and services parking requests, and another component type that periodically determines occupancy status of one or more parking spaces.

4. **SmartParkingComplex**: Like the previous, this example also models a smart parking system. However, this example is a more complex version because (1) although the number of objectives is the same (i.e., two objectives), the number of functionalities required by these objectives, and therefore the number of component types that provide these functionalities, is greater, (2) the number of replication constraints associated with aforementioned functionatilies is greater, and (3) hardware resources are heterogenous.

5. **SmartPowerGrid**: This example models a simple three-bus power system with three different protection assemblies. Each bus should atleast have one Phasor Measurement Unit (PMU), one relay, and one breaker. Each protection assembly represents a protection zone and is modeled as a separate objectives. This example consists of nine different component types; three PMUs, three relay, and three breakers. The PMUs and breakers of the three protection zones are replicated using *per node* replication constraint. 

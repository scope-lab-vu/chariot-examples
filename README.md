# Introduction

This repository contains examples of different systems modeled using the [CHARIOT-ML](https://github.com/visor-vu/chariot) (Modeling Language). Following list summarizes these examples:

1. **HelloWorld**: This example models a simple two objective system without any replication constraints. Instantiation of this system results in deployment of three components; one component that periodically sends greeting message, another component that receives greeting message and queries for time after receiving each message, and another component that acts as a time server by serving synchronous time requests.

  *NOTE: Current implementation of CHARIOT-ML does not fully support modeling of component business logic. Therefore, most of the examples in this repository are modeled using external components, i.e., a component's business logic is treated as a black box at design-time. However, to showcase a possible approach, CHARIOT-ML partially implements the concept of CHARIOT components that provides fine-grained control for modeling component behavior and execution. CHARIOT components are partially implemented because although they can be modeled, the design-time interpreter ignores them completely. In this example, each of the aformentioned three components are modeled both as external components and CHARIOT components.*

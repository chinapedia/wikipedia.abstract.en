REACTIVE BLOCKS[1] is a visual model-driven development environment based on Activity Diagrams supporting formal model analysis, automated code generation, hierarchical modelling, and an extensive library of ready-to-use components for the Java platform.


Concept

The core technology originated from research at the Norwegian University of Science and Technology and the Institute for Telematics.[2] Reactive Blocks is a visual model-driven development environment supporting formal model analysis, automated code generation, hierarchical modelling, and an extensive library of ready-to-use components for the Java platform. By combining re-usable blocks, a developer can create complex applications graphically.

These building blocks are defined by a combination of graphical models and Java code. The graphical model is based on UML activity diagrams and state machines. The existing library can be extended by user-implemented custom blocks which can include the full abilities of the Java platform. Each block has an extended interface description in the form of input and output pins and a contract. The contract indicates which states a block has, and which pins can be interacted with during which state.

Reactive Blocks uses the graphical model together with the information from the contracts to formally analyse the application to discover common problems such as deadlocks or incorrect terminations. If the analysis finds a problem, the according state of the application can be highlighted to identify the cause. The development environment offers a step-by-step animation of the chain of state transitions leading up to the problem.

An application which passed validation can then be automatically converted into Java code. Since a building block´s application is a correct formal definition, the builder can transform its logic into code. The generated code is packaged in a standard Eclipse Java project and can thus be treated as any other code; exporting runnable JARs, debugging, and profiling work the same.


Supported Platforms

-   Java (software platform)
-   Open Services Gateway initiative[3]
-   Eclipse Kura, an interoperability open source project for M2M applications.[4]
-   ESF, an inclusive and targeted Java OSGi software framework for M2M multiservice gateways, smart devices and IoT applications.[5]


Literature

-   -


References

Category:Eclipse (software)

[1] Homepage

[2]

[3]

[4]

[5]
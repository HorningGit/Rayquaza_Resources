<!--DevOps_Theory-->
## DevOps Theory

##### CAMS Model
<!--DevOps_Toolchain-->
##### DevOps Toolchain
<!--DevProcess_Flowchart-->
```mermaid
graph LR
  A[Plan]-->B[Code]-->C[Build]-->D[Test]-->E[Deploy]-->F[Operate]-->G[Monitor]-->A
```
<!--DevOps_Methods-->
## DevOps Methods

<!--DevOps_Concepts-->
## DevOps Concepts

## Infrastructure as Code
There are five categories of IaC tools:
1. **Ad hoc scripts**
2. **Configuration Management Tools**
    - Main Tool: Ansible
    - Benefits:
      - Coding Conventions
      - Idempotence
      - Distrobution
4. **Server Templating Tools**
5. **Orchestration Tools**
6. **Provisioning Tools**

<!--DevProcess_Content-->
### :pineapple: Build Automation
* Preparing Code for Automation in a Live Environment
* Configuration Files and Scripts are placed alongside source code within the repository.
* Build automation will allow administrators to clone the repository, and be able to build it on any system (including CI/CD Server).
* Build automation is consistent which removes many errors associated with manual builds. 
1. Compiled
2. Linted
3. Minified
4. Transformed
5. Unit Tested

### :apple: Continuous Integration | Continuous Delivery | Continuous Deployment

<p align="center">
  <img src="/images/jenkins.png?raw=true" alt="initramfs image"/>
</p>

##### :pineapple: Continuous Integration
```mermaid
flowchart LR
    A[Developer]-->B[SCM]-->C[Automatic Build]-->D[Automatic Test]
    D -->|Fail| A
    D -->|Pass| E[CD/CD Process]
```

### :pineapple: Software Development Process
- **Unit Test** — Evaluates the smallest possible unit of testable code, such as a single function.
- **Integration Test** — Evaluates how the units of a particular program work with one another.
- **Acceptance Test** — Evaluates whether the user experience aligns with the business requirements of the software.
- **End-to-End Test** — Evaluates the application’s behavior using production-like infrastructure that includes networking, databases, and calls to external APIs.

<!--DevProcess_Flowchart-->
```mermaid
flowchart LR
  A[Unit Testing]-->B[Integration Testing]-->C[Acceptance Testing]-->D[End-to-End Testing]
```


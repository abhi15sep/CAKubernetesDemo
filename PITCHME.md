# SQL Server & Kubernetes

---

## What is Kubernetes?

@quote[Kubernetes is a portable, extensible open-source platform for managing containerized workloads and services, that facilitates both declarative configuration and automation. It has a large, rapidly growing ecosystem. Kubernetes services, support, and tools are widely available](kubernetes.io)

---
    
## Kubernetes

<img src="assets/images/KubernetesLogo.png" style="float: right"/>

<br>
@size[0.9em](Open source orchestration engine) <br>
@size[0.9em](Designed by Google) <br>
@size[0.9em](Hosted by the Cloud Native Computing Foundation) <br>
@size[0.9em](Kubernetes v1.0 was released on July 21, 2015)

---

# Working locally

---

## Tools

Docker for Desktop<br>
Visual Studio Code<br>
Kubectl<br>
Azure Data Studio

---

# Demo

---

# Kubernetes Concepts

---

## Master

<img src="assets/images/master-128.png" style="float: right"/>

Components for controlling the cluster<br>

@ul
- @size[0.9em](kube-apiserver)<br>
- @size[0.9em](etcd)<br>
- @size[0.9em](kube-scheduler)<br>
- @size[0.9em](kube-controller-manager)<br>
- @size[0.9em](cloud-controller-manager)<br>
@ulend

---

## Nodes

<img src="assets/images/node-128.png" style="float: right"/>

Running and maintaining pods<br>

@ul
- @size[0.9em](kubelet)<br>
- @size[0.9em](kube-proxy)<br>
- @size[0.9em](Docker)
@ulend

---

## Pods

<img src="assets/images/master-128.png" style="float: right"/>

Smallest deployable units of computing<br>
Group of one or more containers<br>
Shared storage/network<br>
Holds specifications of containers

---

## Services

<img src="assets/images/svc-128.png" style="float: right"/>

An abstraction over a set of pods<br>
Provides a stable networking endpoint<br>
Different types: -<br>

@ul
- @size[0.9em](ClusterIP)<br>
- @size[0.9em](NodePort)<br>
- @size[0.9em](LoadBalancer)<br>
- @size[0.9em](External Name)
@ul

---?code=assets/code/deployment_yaml_file.yaml&lang=yaml&title=Example yaml file

@[3-4](Metadata of deployment)
@[6](Number of replicas)
@[11-21](Pod declaration)
@[13](Pod name)
@[14](Image to be used)
@[15-16](Port)
@[17-21](Setting environment variables)
@[22-35](Service)
@[24-25](Metadata)
@[27-30](Port on service to port on pod)
@[31-33](External IP address)

---

# Demo

---

# Persisting data

---

## Persisting data

Same issue with Docker containers<br>
Data changes not on a persistent volume will be lost

---

## Persistent Volumes

<img src="assets/images/pv-128.png" style="float: right"/>

Just a piece of storage in the cluster<br>
Lifecycle independent of the pods<br>
Can be either dynamic or static

---

## Persistent Volume Claims

<img src="assets/images/pvc-128.png" style="float: right"/>

Request for storage by a user<br>
Request for size and access type<br>
Pods use PersistentVolumeClaims as storage

---?code=assets/code/persistentvolumeclaim.yaml&lang=yaml&title=Persistent Volume yaml file

@[1-8](Create storage class)
@[10-20](Define persistent volume claim)

---?code=assets/code/sqlserver_pvc.yaml&lang=yaml&title=Using Persistent Volume Claims

@[20-24](Referencing secret storing SA PASSWORD)
@[25-31](Reference to PVC)

---

# Demo

---

# Statefulsets

---

### Statefulsets

Designed for stateful applications<br>
Maintains a "sticky" identity for each pod<br>
Pods have a persistent identifier<br>
Used for SQL Server Availability Groups in K8s

---

# Demo

---

# Availability Groups

---

<img src="assets/images/sql_server_ags_k8s.png" style="float: center"/>

#### https://cloudblogs.microsoft.com/sqlserver/2018/12/10/availability-groups-on-kubernetes-in-sql-server-2019-preview/

---

# Demo
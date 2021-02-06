# The journey of an App to the Kunernetes World

### The Rule
``Kubernetes can be up and run on a machine or machines based on the throughput we need`` 

**On-Prem**: Machine can be a physical machine or a VM.
**On-Cloud**: Machine is a VM and it doesn't matter by which cloud provider.

### This prerequisite
The small ``hello-world`` application must be containerized and converted to a ``container iamge`` to be able to travel to the Kubernetes World.

![container identification card](drawio\diagrams-id-card.png)

### Provinces
In the Kubernetes world we have provinces that are called ``Cluster``. 

### Cities
In each province we have serveral cities that are called ``Worker Node``. 

### Houses
Each city has serveral houses called ``Pod``. 

### House ownership
Each app (which is containerized and is working as a ``container`` right now) lives in one Pod. In some pods some containeres live together.

### Districts
Each city in the kubernetes world has usually three different sections which are usually ``called deployment-prod``, ``deployment-test``, and ``deployment-dev``.
 ![Cities in kubernetes](drawio\diagrams-Page-5.png)
 

### Tour guide
The ``helloworld container`` can plan the travel by himself by using ``kubectl CLI``.

Or he can plan the travel with a tour guide. There are different tour guides available to plan the whole travel with them e.g. Azure DevOps, ArgoCD, etc.

The tour guides of the kubernetes world are called ``Continuous Deployment (CD) Pipeline``.


### Related links
- ArgoCD: https://www.youtube.com/watch?t=1m4s&v=aWDIQMbp1cc&feature=youtu.be
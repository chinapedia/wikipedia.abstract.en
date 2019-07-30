MANAGEIQ is an open source cloud management platform. It was founded by Red Hat as a community project in 2014, and forms the basis for its CloudForms product. It allows centralized management of various virtualization, private cloud, public cloud, containers, and software defined networking technologies.


Features

ManageIQ offers the following capabilities

-   Self-service, allowing IT staff to present a catalog to users from which they can select automated services, such as provisioning a new virtual machine.
-   Compliance enforcement, allowing an IT department to enforce certain compliance policies.
-   Optimization, allowing IT staff to optimize the resource utilization of an environment, for example using right sizing and capacity planning.


Supported platforms

ManageIQ can manage the following platforms:

  Platform type                 Supported platforms
  ----------------------------- --------------------------------------------------------------
  Virtualization                VMware vSphere, oVirt, System Center Virtual Machine Manager
  Private Cloud                 OpenStack, LenovoXClarity
  Public Cloud                  Amazon Web Services, Microsoft Azure, Google Cloud Platform
  Software defined networking   OpenStack Neutron
  Containers                    Kubernetes, OpenShift Origin
  Automation/configuration      Ansible Tower, Foreman


Theory of operation

ManageIQ is a _manager of managers_ and as such it needs to connect to other management systems to function. These other management systems are called _providers_ in ManageIQ parlance. ManageIQ will connect to the providers via their API.

For each configured provider, ManageIQ will continuously discover inventory. The type of inventory depends on the provider, for example in the case of VMware vSphere it will be virtual machines, hypervisors, and other relevant elements. It will also discover relationships between the elements, for example the fact that a virtual machine runs on a hypervisor, and listen for events. Certain events that indicate a change in the environment will result in a full or partial refresh of the inventory. The end result is a mirror of the inventory that is nearly instantaneously up to date with respect to the original inventory managed by the provider.

If configured to do so, ManageIQ will also capture metrics like CPU and memory usage on the discovered inventory.

All captured information about a managed environment is stored in a database called the _Virtual Management Database (VMDB)_. As of March 2016, the VMDB schema described in excess of 200 entities and relationships.[1]


Architecture

ManageIQ is written in the Ruby (programming language) language and uses the Ruby on Rails framework. The ManageIQ software is shipped as a pre-built virtual appliance, roughly 1GB in size. The appliance is based on the CentOS operating system, and includes an embedded PostgreSQL database. Since the Darga release, a container based version has also been made available.

An appliance can be used on its own, or it can be part of a three-tier federated architecture. In this case the operator would configure _zones_, _regions_ and a single _super-region_. Appliances can be assigned to a specific zone or region, and are configured with specific roles so that work is coordinated with the region. Most roles are multi-master and distribute work automatically via a queue, but some roles like the database are singletons.


Releases

The ManageIQ project uses a time based release cycle where a new version is released approximately every 6 months.

Releases are named after chess grandmasters, where subsequent releases names start with consecutive letters of the alphabet. The following versions have been released so far:

  Release name     Release date          New features introduced
  ---------------- --------------------- ----------------------------------------------------------------------------------------------------------------------------
  Anand            2 September 2014[2]   First open source release of the ManageIQ, Inc. code base
  Botvinnik        12 June 2015[3]       Support for OpenStack undercloud, Foreman; improved AWS support; REST API supersedes SOAP API
  Capablanca       5 December 2015[4]    Support for Azure, Kubernetes, OpenShift; new self-service UI
  Darga            7 June 2016[5]        Support for Google Cloud Platform, Ansible Tower; Software defined networking support for Neutron, public clouds
  Euwe             20 December 2016[6]   Support for new provider types Storage and Middleware; improved Container Management and Public Cloud Support
  Fine             17 May 2017[7]        Automation with Ansible, improved AWS support including storage, new Physical Infrastructure provider type
  Gaprindashvili   30 January 2018[8]    Generic Objects, Lenovo XClarity Provider, Alerts Management
  Hammer           15 January 2019       Support for Ansible Tower Workflows, New Network Providers for Nuage and Redfish, virtual-to-virtual (V2V) transformations


History

The ManageIQ code base was originally developed by ManageIQ, Inc., from 2006[9] onwards. The product was first launched as _Enterprise Virtualization Manager (EVM) Suite_ in 2007.[10] Over the next 5 years ManageIQ steadily improved the product and got more customers. ManageIQ, Inc. was named Gartner Cool Vendor in 2008.[11]

In December 2012, Red Hat announced that it had entered into a definitive agreement to acquire ManageIQ, Inc.[12] After the acquisition, Red Hat released the ManageIQ, Inc. code under the _CloudForms_ product name, where it replaced the previous implementation based on the Deltacloud and Aeolus projects. The first publicly available release was CloudForms 3.0, released in late 2013.[13] In June 2014, Red Hat open sourced the code base under the project name _ManageIQ_,[14] and founded the ManageIQ project to steward its ongoing development as an open source community.


External links

-   Official website


References

Category:Red Hat software

[1]

[2]

[3]

[4]

[5]

[6]

[7]

[8]

[9]

[10]

[11]

[12]

[13]

[14]
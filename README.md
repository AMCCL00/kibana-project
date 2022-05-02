# kibana-project
## Automated ELK Stack Deployment

The files in this repository were used to configure the network depicted below.

![Ansible Diagram](https://github.com/AMCCL00/kibana-project/blob/main/Images/Ansible%20Diagram.png)

These files have been tested and used to generate a live ELK deployment on Azure. They can be used to either recreate the entire deployment pictured above. Alternatively, select portions of the _____ file may be used to install only certain pieces of it, such as Filebeat.

  - https://github.com/AMCCL00/kibana-project/blob/main/Ansible/filebeat-playbook.yml
  - https://github.com/AMCCL00/kibana-project/blob/main/Ansible/metricbeat-playbook.yml

This document contains the following details:
- Description of the Topologu
- Access Policies
- ELK Configuration
  - Beats in Use
  - Machines Being Monitored
- How to Use the Ansible Build


### Description of the Topology

The main purpose of this network is to expose a load-balanced and monitored instance of DVWA, the D*mn Vulnerable Web Application.

Load balancing ensures that the application will be highly _____, in addition to restricting _____ to the network.
-Load balancers help keep traffic under control and also provides as a backup in the event there is a point of failure. This allows for more traffic to flow at a
single time. Using a jump box is a good way to help protect yourself from possible attacks and any contaminated containers.

Integrating an ELK server allows users to easily monitor the vulnerable VMs for changes to the _____ and system _____.
- Filebeat helps forward and centralize log data.
- Metricbeat records metrics and statistics.

The configuration details of each machine may be found below.
_Note: Use the [Markdown Table Generator](http://www.tablesgenerator.com/markdown_tables) to add/remove values from the table_.

| Name     | Function | IP Address | Operating System |
|----------|----------|------------|------------------|
| Jump Box | Gateway  | 10.0.0.4   | Linux            |
| Web-1    |Container | 10.0.0.5   | Linux            |
| Web-2    |Container | 10.0.0.6   | Linux            |
|Elk Server|Container | 10.1.0.5   | Linux            |

### Access Policies

The machines on the internal network are not exposed to the public Internet. 

Only the _____ machine can accept connections from the Internet. Access to this machine is only allowed from the following IP addresses:
-24.165.126.185

Machines within the network can only be accessed by _____.
-The jump box provisioner, it's IP is: 10.0.0.4

A summary of the access policies in place can be found in the table below.

| Name     | Publicly Accessible | Allowed IP Addresses |
|----------|---------------------|----------------------|
| Jump Box | Yes                 | 24.165.126.185       |
| Web-1&2  | No                  | 10.0.0.4             |
|Elk Server| N0                  | 10.0.0.4             |

### Elk Configuration

Ansible was used to automate configuration of the ELK machine. No configuration was performed manually, which is advantageous because...
-The main advantage of using ansible is that it's fairly simple to set up and it's compact and all in one place.

The playbook implements the following tasks:
-Step 1: SSH into your jump box (Provided you use one)
-Step 2: Install docker.io
-Step 3: Pull your container and verify the name of it
-Step 4: Start your Docker
-Step 5: Attach into your Docker.ls

The following screenshot displays the result of running `docker ps` after successfully configuring the ELK instance.

![docker_ps_output](https://github.com/AMCCL00/kibana-project/blob/main/Images/docker_ps_output.png)

### Target Machines & Beats
This ELK server is configured to monitor the following machines:
-10.0.0.5, 10.0.0.6

We have installed the following Beats on these machines:
-Filebeat, Metricbeat

These Beats allow us to collect the following information from each machine:
-Filebeat collects log data that goes through the machines, while Metricbeat monitors the statistics of a machine. Metricbeat can be used to monitor data that is useful while working on the machine like memory usage, and cpu useage.

### Using the Playbook
In order to use the playbook, you will need to have an Ansible control node already configured. Assuming you have such a control node provisioned: 

SSH into the control node and follow the steps below:
- Copy the _____ file to _____.
- Update the _____ file to include...
- Run the playbook, and navigate to ____ to check that the installation worked as expected.

_TODO: Answer the following questions to fill in the blanks:_
- metricbeat/filebeat-playbook.yml file into your docker's /etc/ansible file.
- To install one of the playbooks on a specific machine, you need to update the respective Config file and change the IP address to whatever machine you want to install it on.
- To ensure that the machine is running, go to (your elk server's IP):5601 to ensure it is running. If it is successful, it will take you to Kibana.

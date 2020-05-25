#===============================================================================
# VMware Proxmox configuration
#===============================================================================

# Proxmox API url
proxmox_url = "https://10.10.1.4:8006/api2/json"

# Proxmox username used to deploy the infrastructure #
proxmox_user = "terraform@pve"

# Skip the verification of the vCenter SSL certificate (true/false) #
proxmox_unverified_ssl = "true"

# Proxmox datacenter name where the infrastructure will be deployed #
proxmox_node = "px"

# Proxmox resource pool name that will be created to deploy the virtual machines #
#proxmox_resource_pool = "kubernetes-kubespray"

#===============================================================================
# Global virtual machines parameters
#===============================================================================

# Username used to SSH to the virtual machines #
vm_user = "ansible"

# Password set for user vm_user
vm_password = ""

# Multi docker cpu
vm_numa = true

# VM CPU socket numbers
vm_sockets = 2

# The linux distribution used by the virtual machines (ubuntu/debian/centos/rhel) #
vm_distro = "debian"

# Disk type
vm_disk_type = "scsi"

# Storage name
vm_storage = "local-lvm"

# Storage type
vm_storage_type = "lvm"

# The prefix to add to the names of the virtual machines #
vm_name_prefix = "k8s-kubespray"

# The Proxmox network name used by the virtual machines #
vm_network_bridge = "vmbr0"

# The netmask used to configure the network cards of the virtual machines (example: 24)#
vm_netmask = "24"

# The seatch domain used for dns in resolv.conf file
vm_searchdomain = "42ho.me"

# The network gateway used by the virtual machines #
vm_gateway = "10.10.1.1"

# The DNS server used by the virtual machines #
vm_dns = "10.10.1.1"

# User used for ssh connection
vm_ssh_user = "ansible"

# User password
vm_ssh_user_password = "ansible"

# The sshkey used to connect to vm
vm_sshkeys = <<EOF
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQCKgTAPe5UFEA33pQAN8q+X25yw0rwQL8jPXYDtk9+uvBcxrS0aSv35TkACiTvYaFyr9nhAkGmUMjrpaZtb1MCnp8YZxNdtK47csqYQysCshOMB6Mw+PfZCortvanJDhEHxCyy3BznCd+KBtCaheIbDd4EGMGH+k7xBr05Eovgi1t1s+Dk1PRXzRst2ePCqzOpxubeWXbsH5YpG9ziskEvQQvNkZTAOlvzwBZ95QSMVhI/D0r11fm4OI+qUUm1ym0DHQevwit9Clmk0i+YKddYc5PlJp+V+vjgwKUnmRbSKv7OFlN4hrulNDkLI8SnxkKMNWxwowD3ja8xAHajl8Ghh
EOF

# The Proxmox template the virtual machine are based on #
vm_template = "debian-cloudinit"

# Use full clone (true/false)
vm_full_clone = "true"

#===============================================================================
# Master node virtual machines parameters
#===============================================================================

# The number of Thread VM will have, vCPUs = Socket * Cores
vm_master_cores = "1"

# The amount of RAM allocated to the master virtual machines #
vm_master_ram = "2048"

# The size disk in GB
vm_master_size = "20"

# The IP addresses of the master virtual machines. You need to define 3 IPs for the masters #
vm_master_ips = {
  "0" = "10.10.3.10"
  "1" = "10.10.3.11"
  "2" = "10.10.3.12"
}

#===============================================================================
# Worker node virtual machines parameters
#===============================================================================

# The number of Thread VM will have, vCPUs = Socket * Cores
vm_worker_cores = "1"

# The amount of RAM allocated to the worker virtual machines #
vm_worker_ram = "2048"

# The size disk in GB
vm_worker_size = "20"

# The IP addresses of the master virtual machines. You need to define 1 IP or more for the workers #
vm_worker_ips = {
  "0" = "10.10.3.20"
  "1" = "10.10.3.21"
  "2" = "10.10.3.22"
}

#===============================================================================
# HAProxy load balancer virtual machine parameters
#===============================================================================

# The number of Thread VM will have, vCPUs = Socket * Cores
vm_haproxy_cores = "1"

# The amount of RAM allocated to the load balancer virtual machine #
vm_haproxy_ram = "1024"

# The size disk in GB
vm_haproxy_size = "20"

# The IP address of the load balancer floating VIP #
vm_haproxy_vip = "10.10.3.1"

# The IP address of the load balancer virtual machine #
vm_haproxy_ips = {
  "0" = "10.10.3.5"
  "1" = "10.10.3.6"
}

#===============================================================================
# Kubernetes parameters
#===============================================================================

# The Git repository to clone Kubespray from #
k8s_kubespray_url = "https://github.com/kubernetes-sigs/kubespray.git"

# The version of Kubespray that will be used to deploy Kubernetes #
k8s_kubespray_version = "v2.13.0"

# The Kubernetes version that will be deployed #
k8s_version = "v1.17.6"

# The overlay network plugin used by the Kubernetes cluster #
k8s_network_plugin = "flannel"

# If you use Weavenet as an overlay network, you need to specify an encryption password #
k8s_weave_encryption_password = ""

# The DNS service used by the Kubernetes cluster (coredns/kubedns) #
k8s_dns_mode = "coredns"

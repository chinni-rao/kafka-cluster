  zk_cluster_info="{
    'zk-node-1' => {'192.168.0.165' => 1 }
  }"

  # Note that broker_id must be unique for each host in the cluster. It should ideally not change
  # throughout the lifetime of the Kafka installation on a given machine.
  kafka_cluster_info="{
    'kafka-node-1' => { :broker_id => 1 },
    'kafka-node-2' => { :broker_id => 2 },
    'kafka-node-3' => { :broker_id => 3 }
  }"
echo $zk_cluster_info
ansible-playbook -i hosts main.yml --extra-vars $zk_cluster_info

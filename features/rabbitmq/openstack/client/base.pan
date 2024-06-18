structure template features/rabbitmq/openstack/client/base;

'rabbit_retry_interval' = 1;
'rpc_conn_pool_size' = if ( is_defined(OS_RABBITMQ_RPC_CONN_POOL_SIZE) ) {
    OS_RABBITMQ_RPC_CONN_POOL_SIZE;
} else {
    null;
};

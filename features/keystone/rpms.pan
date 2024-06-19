unique template features/keystone/rpms;

'/software/packages' = {
    pkg_repl('openstack-keystone');
    pkg_repl('python3-keystoneclient');
    pkg_repl('python3-etcd3gw');
    openstack_add_httpd_packages( OS_KEYSTONE_CONTROLLER_PROTOCOL == 'https' );

    if ( is_defined(OS_KEYSTONE_FEDERATION_OIDC_PARAMS) ) {
        pkg_repl('mod_auth_openidc');
    };

    SELF;
};

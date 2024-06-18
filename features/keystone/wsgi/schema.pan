declaration template features/keystone/wsgi/schema;

include 'types/openstack/core';


type openstack_keystone_httpd_oidc_provider = {
    'allowed_claims' ? string[]
    'ClientID' : string
    'ClientSecret' : string
    'CryptoPassphrase' : string
    'dashboard_menu' ? string
    'ProviderMetadataURL' : type_hostURI
    'RedirectURI' : type_hostURI
};


type openstack_keystone_httpd_oidc = {
    'oidc' : openstack_keystone_httpd_oidc_provider{}
};

type openstack_keystone_httpd_vhost = {
    'port' : type_port
    'processgroup' : string
    'script' : absolute_file_path
    'ssl' : openstack_httpd_ssl_config
};

type openstack_keystone_httpd_config = {
    'listen' : type_port[]
    'oidc_enabled' : boolean = false
    'vhosts' : openstack_keystone_httpd_vhost[]
};

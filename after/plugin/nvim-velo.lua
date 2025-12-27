require('nvim-velo').setup({
    api_config_path = "/testing/velo/secrets/adm_martins.api.config.yaml", -- Absolute path w/ proper privs
    --default_client_fqdn = "ub-tests.internal.cloudapp.net", -- Default hostname for running client VQLs 
    default_client_fqdn = "velolab-windows.13e4vuvib43ull1ujudfrw4udg.gvxx.internal.cloudapp.net", -- Default hostname for running client VQLs 
    delete_flow_after_exec = true -- Whether or not to delete flow's after client VQL
})

vim.filetype.add({
    extension = {
        vql="vql"
    }
})

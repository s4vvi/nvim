require('nvim-velo').setup({
    api_config_path = "/work/projects/velociraptor/vql/api.config.yaml", -- Absolute path w/ proper privs
    default_client_fqdn = "testing", -- Default hostname for running client VQLs 
    delete_flow_after_exec = true -- Whether or not to delete flow's after client VQL
})

vim.filetype.add({
    extension = {
        vql="vql"
    }
})

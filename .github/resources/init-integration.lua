-- init.lua used for integration tests
vim.g.rocks_nvim = {
    rocks_path = vim.fs.joinpath(vim.fn.getcwd(), "rocks"),
    _log_level = vim.log.levels.TRACE,
}

local luarocks_path = {
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "share", "lua", "5.4", "?.lua"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "share", "lua", "5.4", "?", "init.lua"),
}
package.path = package.path .. ";" .. table.concat(luarocks_path, ";")

local luarocks_cpath = {
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib", "lua", "5.4", "?.so"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib64", "lua", "5.4", "?.so"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib", "lua", "5.4", "?.dylib"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib64", "lua", "5.4", "?.dylib"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib", "lua", "5.4", "?.dll"),
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib64", "lua", "5.4", "?.dll"),
}
package.cpath = package.cpath .. ";" .. table.concat(luarocks_cpath, ";")

vim.opt.runtimepath:append(
    vim.fs.joinpath(vim.g.rocks_nvim.rocks_path, "lib", "luarocks", "rocks-5.4", "rocks.nvim", "*")
)

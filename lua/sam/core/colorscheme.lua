local status, _ = pcall(vim.cmd, "colorscheme gruvbox")
if not status then
	vim.cmd("colorscheme dracula")
	print("Colorscheme not found!")
	return
end

local bg_status, _ = pcall(vim.o.background, "dark")
if bg_status then
	return
end

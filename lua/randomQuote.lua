local name = vim.fn.hostname()
quotes = {
	"Grey words can't make anything happen.",
  "I make enemies everyday. It's called business.",
}

function tablelength(T)
	local count = 0
	for _ in pairs(T) do
		count = count + 1
	end
	return count
end

local name = vim.fn.hostname()
quotes = {
" The man who has confidence in himself gains the confidence of others.",

"I believe you have to be willing to be misunderstood if you're going to innovate.",

"All that was great in the past was ridiculed, condemned, combated, and suppressed... only to emerge all the more powerfully, all the more triumphantly from the struggle.",

"First principle: never to let one's self be beaten down by persons or by events.",

"To be successful your focus has to be so intense that others think you're crazy.",

"If someone tells you 'you can't', they're showing you their limits, not yours.",

"Don't ask for what the world needs. Ask what makes you come alive, and go do it.",

"I truly believe that in order to truly be great at something you have to give into a certain amount of madness.",

"Do what is right, not what is easy nor what is popular.",

"When everything seems to be going against you, remember that the airplane takes off against the wind, not with it.",

"Most of the things worth doing in the world had been declared impossible before they were done.",

"Train insane or remain the same.",

"No one can make you feel inferior without your consent.",

"I create new enemies every day. it's called business.",

"There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.",

"Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no help at all.",

"You get the best out of others when you give the best of yourself.",

"Never let the world define you as less than great.",

"It's not what you say out of your mouth that determines your life, it's what you whisper to yourself that has the most power. ",
}

function tablelength(T)
	local count = 0
	for _ in pairs(T) do
		count = count + 1
	end
	return count
end



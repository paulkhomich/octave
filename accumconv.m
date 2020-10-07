% Метод перекрытия с накоплением (Свертка)

disp("Overlap with Accumulation (accumconv) add")

function y = accumconv(x,h,n)
	M = size(x)(2)
	N2 = size(h)(2)
	N3 = n

	xlin = [x linspace(0,0,N3)]
	hlin = [h linspace(0,0,N3 - N2)]
	y = linspace(0, 0, M + N2 - 1)

	PRINTER = floor(M/(N3-(N2-1)))

	for m = 0:(floor(M/(N3-(N2-1))) - 1)
		s = m*(N3-(N2-1))+1
		xwork = xlin(s:s+N3-1)

		for i = 1:N3
			for k = 1:N3
				if (i > (N2 - 1))
					y(s+i-1) += xwork(k) * hlin(mod(i - k, N3)+1)
				end
			end 
		end 
	end

	% Дополнить первые (N2-1) пустых
	for i = 1:(N2-1)
		for k = 1:i
			y(i) += xlin(k)*hlin(i - k + 1)
		end
	end	
end


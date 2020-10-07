% Метод перекрытия с суммированием
% Подсчет свертки частями

disp("Overlap and Sum method (summconv) add")

function y = summconv(x,h,n)
	N1 = n
	M = size(x)(2)
	N2 = size(h)(2)

	xlin = [x linspace(0, 0, (N1 - mod(M, N1) + N2))]
	hlin = [h linspace(0, 0, N1)]
	y = linspace(0, 0, M + N2 - 1)

	for m = 0:floor(M/N1)
		xwork = xlin((m*N1+1):(m+1)*N1)
		xwork = [xwork linspace(0, 0, N2)]
		for i = 1:(N1 + N2 - 1)
			for k = 1:i
				y(m*N1 + i) += xwork(k) * hlin(i - k + 1)
			end
		end
	end
end

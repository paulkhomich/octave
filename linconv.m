disp("Linear Convolution (linconv) add")

function y = linconv(x,h)
	N1 = size(x)(2)
	N2 = size(h)(2)
	N = N1 + N2 - 1

	xlin = [x linspace(0, 0, N2)]
	hlin = [h linspace(0, 0, N1)]

	y = linspace(0, 0, N)
	for i = 1:N
		for k = 1:i
			y(i) += xlin(k).*hlin(i - k + 1)
		end
	end
end

% Определить N — размер X
% Дополнить нулями h до размера N (если нужно)
% y[i] = sum(k = 0..N-1) x[k]*h[(i-k) % N]   (два цикла по for)
disp("Cyclic Convolution (cycconv) add")

function y = cycconv(x,h)
	xs = size(x)(2)
	hs = size(h)(2)
	N = max([xs hs])
	h = [h linspace(0, 0, N - hs)]

	y = linspace(0, 0, N)
	for i = 1:N
		for k = 1:N
			y(i) += x(k).*h(mod(i - k, N)+1)
		end
	end
end


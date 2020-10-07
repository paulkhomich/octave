% Подключение линейной свертку
source linconv.m

mu = 0
sig = 0.853242
tau = 2
t0 = 0

% Уравнение X
x = @(t) exp(-1 .* (t - mu).^2 ./ (2.*sig.^2)) ./ (2 .* pi .* sig.^2)

% Уравнение H
h = @(t) (exp(-t./tau)./(2 * tau)) .* (sign(t - t0) + 1)

% Аналитическое решение
% analit = @(t) (((exp((1./2) .* (sig/tau).^2) .* exp(-1 .* ((t-mu)./tau))) ./ (2.*tau))) .* (erf(((t - mu - sig.^2)./tau)./(sqrt(2.*sig.^2))) .+ 1)
analit = @(t) exp((1/2) .* (sig./tau).^2) .* exp((mu .- t) ./ tau) .* (erf(((t - mu - sig.*sig)./tau)./(sqrt(2.*sig.*sig))) + 1) ./ (2.*tau)

% Poisson dağılımını hesaplamak için gerekli değişkenleri tanımlayalım
lambda = 20; % ortalama olay sayısı

% X değişkeninin alacağı değerleri belirleyelim (a)
x_a = lambda-lambda/4:lambda+lambda/4;

% Poisson dağılımını hesaplayalım (a)
P_a = (lambda.^x_a .* exp(-lambda)) ./ factorial(x_a);

% Bar grafiğini çizdirelim (a)
bar(x_a, P_a, 'hist');

% Grafiği etiketleyelim (a)
xlabel('Olayların sayısı');
ylabel('Olasılık');
title('Poisson Dağılımı (\lambda=20)');

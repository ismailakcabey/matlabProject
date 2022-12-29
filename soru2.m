% Normal dağılımını hesaplamak için gerekli değişkenleri tanımlayalım
mu = 10; % ortalama değer
sigma = 3; % standart sapma değer

% X değişkeninin alacağı değerleri belirleyelim
x = -50:50;

% Normal dağılımını hesaplayalım
P = (1/(sigma*sqrt(2*pi))) * exp(-(x-mu).^2/(2*sigma^2));

% Bar grafiğini çizdirelim
bar(x, P, 'hist');

% Grafiği etiketleyelim
xlabel('X değişkeninin değeri');
ylabel('Olasılık');
title('Normal Dağılım (\mu=10, \sigma=3)');

% Binom dağılımını hesaplamak için gerekli değişkenleri tanımlayalım
n = 50; % deneylerin toplam sayısı
p = 0.3; % başarılı olayın olasılığı

% Başarılı olayların sayısını 1'den (n-1)'e kadar 1'er artırarak deneyelim
x = 1:n-1;

% Binom dağılımını hesaplayalım
P = (factorial(n)./(factorial(x).*factorial(n-x))) .* (p.^x) .* ((1-p).^(n-x));

% Bar grafiğini çizdirelim
bar(x, P, 'hist');

% Grafiği etiketleyelim
xlabel('Başarılı olayların sayısı');
ylabel('Olasılık');
title('Binom Dağılımı (p=0.3)');

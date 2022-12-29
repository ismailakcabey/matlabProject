% Örneklem ağırlıklarını ve güven düzeyini alalım
weights = [10, 20, 30, 40, 50, 60, 70, 80, 90, 100];
confidence_level = 0.95;

% Örneklem sayısını ve ortalamasını hesaplayalım
n = length(weights);
mean_sample = mean(weights);

% t-dağılımını kullanarak ortalamanın üst ve alt sınırlarını hesaplayalım
t = tinv((1-confidence_level)/2, n-1);
upper_limit_mean = mean_sample + t*(std(weights)/sqrt(n));
lower_limit_mean = mean_sample - t*(std(weights)/sqrt(n));

% Sonuçları yazdıralım
fprintf('Güven Aralığı (Ortalama): [%.2f, %.2f]\n', lower_limit_mean, upper_limit_mean);

-- =========================================
-- TAJJIR Sample Listings (Demo Data)
-- Run this in Supabase SQL Editor
-- =========================================

-- Insert sample listings (works without users)
INSERT INTO listings (user_id, category, title, description, price, city, images, seller_name, seller_phone, status, created_at) VALUES

-- السيارات / Voitures
(NULL, 'cars', 'Mercedes-Benz Classe C 220d 2021', 'سيارة مرسيدس بنز الفئة C موديل 2021، حالة ممتازة، كيلومتراج 45000 كم، جميع الخيارات متوفرة، لون أسود ميتاليك، صيانة دورية في الوكالة، ضمان سنة.', 320000, 'casablanca', ARRAY['https://images.unsplash.com/photo-1617531653332-bd46c24f2068?w=800', 'https://images.unsplash.com/photo-1618843479313-40f8afb4b4d8?w=800'], 'أحمد المنصوري', '+212 661-123456', 'active', NOW() - INTERVAL '2 days'),

(NULL, 'cars', 'Dacia Logan 2020 - حالة ممتازة', 'داسيا لوغان موديل 2020، محرك ديزل اقتصادي، كيلومتراج 60000 كم، مالك أول، جميع الأوراق سليمة، مكيف هواء، زجاج كهربائي.', 95000, 'rabat', ARRAY['https://images.unsplash.com/photo-1549399542-7e3f8b79c341?w=800'], 'محمد العلوي', '+212 662-234567', 'active', NOW() - INTERVAL '1 day'),

(NULL, 'cars', 'BMW X5 2019 - Full Option', 'بي إم دبليو X5 موديل 2019، جميع الخيارات، شاشة كبيرة، كاميرا 360 درجة، مقاعد جلد، فتحة سقف بانورامية، 75000 كم.', 450000, 'marrakech', ARRAY['https://images.unsplash.com/photo-1555215695-3004980ad54e?w=800', 'https://images.unsplash.com/photo-1503376780353-7e6692767b70?w=800'], 'يوسف بنعلي', '+212 663-345678', 'active', NOW() - INTERVAL '3 days'),

-- العقارات / Immobilier
(NULL, 'realEstate', 'شقة فاخرة 3 غرف - المعاريف', 'شقة راقية في حي المعاريف، 120 متر مربع، 3 غرف نوم، صالون كبير، مطبخ مجهز، حمامين، شرفة، موقف سيارة، حارس، مصعد.', 1200000, 'casablanca', ARRAY['https://images.unsplash.com/photo-1502672260266-1c1ef2d93688?w=800', 'https://images.unsplash.com/photo-1560448204-e02f11c3d0e2?w=800'], 'كريم الفاسي', '+212 664-456789', 'active', NOW() - INTERVAL '5 days'),

(NULL, 'realEstate', 'فيلا للبيع - أكدال الرباط', 'فيلا فاخرة في حي أكدال، 300 متر مربع، 5 غرف نوم، حديقة كبيرة، مسبح، كراج لسيارتين، تشطيبات عالية الجودة.', 3500000, 'rabat', ARRAY['https://images.unsplash.com/photo-1613490493576-7fde63acd811?w=800', 'https://images.unsplash.com/photo-1600596542815-ffad4c1539a9?w=800'], 'سارة المراكشي', '+212 665-567890', 'active', NOW() - INTERVAL '1 week'),

(NULL, 'realEstate', 'محل تجاري للكراء - وسط المدينة', 'محل تجاري في موقع استراتيجي وسط المدينة، 80 متر مربع، واجهة زجاجية، مناسب لجميع الأنشطة التجارية.', 8000, 'tangier', ARRAY['https://images.unsplash.com/photo-1441986300917-64674bd600d8?w=800'], 'عبد الله الطنجي', '+212 666-678901', 'active', NOW() - INTERVAL '4 days'),

-- الهواتف / Téléphones
(NULL, 'phones', 'iPhone 14 Pro Max 256GB', 'آيفون 14 برو ماكس، سعة 256 جيجا، لون ذهبي، حالة ممتازة كالجديد، مع جميع الملحقات الأصلية والعلبة، ضمان سنة.', 12000, 'casablanca', ARRAY['https://images.unsplash.com/photo-1678685888221-cda773a3dcdb?w=800'], 'ياسين الحمداوي', '+212 667-789012', 'active', NOW() - INTERVAL '6 hours'),

(NULL, 'phones', 'Samsung Galaxy S23 Ultra', 'سامسونج جالاكسي S23 ألترا، 512 جيجا، لون أسود، شاشة سوبر أموليد، كاميرا 200 ميجابكسل، حالة ممتازة.', 9500, 'fes', ARRAY['https://images.unsplash.com/photo-1610945415295-d9bbf067e59c?w=800'], 'عمر البوعناني', '+212 668-890123', 'active', NOW() - INTERVAL '12 hours'),

-- الإلكترونيات / Électronique
(NULL, 'electronics', 'MacBook Pro M2 2023', 'ماك بوك برو بمعالج M2، شاشة 14 بوصة، 16 جيجا رام، 512 جيجا SSD، حالة ممتازة، مع الشاحن الأصلي.', 18000, 'rabat', ARRAY['https://images.unsplash.com/photo-1517336714731-489689fd1ca8?w=800'], 'نادية الرباطي', '+212 669-901234', 'active', NOW() - INTERVAL '2 days'),

(NULL, 'electronics', 'PlayStation 5 + 2 Controllers', 'بلايستيشن 5 النسخة الأصلية مع قرص، يدين تحكم، 5 ألعاب أصلية، حالة ممتازة جداً.', 5500, 'marrakech', ARRAY['https://images.unsplash.com/photo-1606144042614-b2417e99c4e3?w=800'], 'أمين المراكشي', '+212 670-012345', 'active', NOW() - INTERVAL '1 day'),

(NULL, 'electronics', 'تلفاز Samsung 55 بوصة 4K', 'تلفاز سامسونج سمارت 55 بوصة، دقة 4K، HDR، حالة ممتازة، مع الريموت والقاعدة.', 4500, 'agadir', ARRAY['https://images.unsplash.com/photo-1593359677879-a4bb92f829d1?w=800'], 'حسن السوسي', '+212 671-123456', 'active', NOW() - INTERVAL '3 days'),

-- الأثاث / Meubles
(NULL, 'furniture', 'صالون مغربي تقليدي فاخر', 'صالون مغربي تقليدي، خشب أصلي، تطريز يدوي فاخر، 10 مقاعد، حالة ممتازة، لون بني وذهبي.', 25000, 'fes', ARRAY['https://images.unsplash.com/photo-1555041469-a586c61ea9bc?w=800'], 'فاطمة الفاسية', '+212 672-234567', 'active', NOW() - INTERVAL '5 days'),

(NULL, 'furniture', 'غرفة نوم كاملة - خشب زان', 'غرفة نوم كاملة من خشب الزان، سرير كبير، خزانة 4 أبواب، تسريحة مع مرآة، 2 كوموديت.', 18000, 'casablanca', ARRAY['https://images.unsplash.com/photo-1505693416388-ac5ce068fe85?w=800'], 'ليلى البيضاوية', '+212 673-345678', 'active', NOW() - INTERVAL '1 week'),

-- الوظائف / Emploi
(NULL, 'jobs', 'مطلوب مطور Full Stack', 'شركة تقنية تبحث عن مطور Full Stack، خبرة 3 سنوات على الأقل في React و Node.js، راتب تنافسي، تأمين صحي.', 0, 'casablanca', ARRAY['https://images.unsplash.com/photo-1498050108023-c5249f4df085?w=800'], 'TechMaroc SA', '+212 522-123456', 'active', NOW() - INTERVAL '1 day'),

(NULL, 'jobs', 'مطلوب محاسب/محاسبة', 'شركة تجارية تبحث عن محاسب(ة) للعمل بدوام كامل، خبرة في Sage و Excel، راتب حسب الخبرة.', 0, 'rabat', ARRAY['https://images.unsplash.com/photo-1454165804606-c3d57bc86b40?w=800'], 'شركة الأمان للتجارة', '+212 537-234567', 'active', NOW() - INTERVAL '2 days'),

-- الخدمات / Services
(NULL, 'services', 'خدمات تصميم جرافيك احترافية', 'مصمم جرافيك محترف، تصميم شعارات، بطاقات أعمال، منشورات سوشيال ميديا، بانرات إعلانية. أسعار مناسبة.', 500, 'casablanca', ARRAY['https://images.unsplash.com/photo-1626785774573-4b799315345d?w=800'], 'رشيد الفنان', '+212 674-456789', 'active', NOW() - INTERVAL '4 days'),

(NULL, 'services', 'دروس خصوصية - الرياضيات والفيزياء', 'أستاذ متخصص يقدم دروس خصوصية في الرياضيات والفيزياء لجميع المستويات، نتائج مضمونة.', 150, 'rabat', ARRAY['https://images.unsplash.com/photo-1509228468518-180dd4864904?w=800'], 'أستاذ كريم', '+212 675-567890', 'active', NOW() - INTERVAL '6 days'),

-- الحيوانات / Animaux
(NULL, 'animals', 'قطط شيرازي للبيع', 'قطط شيرازي أصلية، عمر شهرين، ذكور وإناث، ألوان متنوعة (أبيض، رمادي، برتقالي)، مع دفتر التطعيمات.', 1500, 'casablanca', ARRAY['https://images.unsplash.com/photo-1514888286974-6c03e2ca1dba?w=800'], 'سلمى الودغيري', '+212 676-678901', 'active', NOW() - INTERVAL '3 days'),

-- الملابس / Vêtements
(NULL, 'clothing', 'قفطان مغربي تقليدي للعروس', 'قفطان مغربي فاخر للعروس، تطريز يدوي بالذهب والفضة، لون أحمر ملكي، مقاس M/L، لبس مرة واحدة فقط.', 8000, 'fes', ARRAY['https://images.unsplash.com/photo-1583391733956-6c78276477e2?w=800'], 'مريم العروسي', '+212 677-789012', 'active', NOW() - INTERVAL '2 days');

-- Verify the inserted data
SELECT id, title, category, city, price, status FROM listings ORDER BY created_at DESC;

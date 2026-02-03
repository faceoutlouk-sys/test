-- ============================================
-- إعداد Supabase Storage للصور
-- ============================================

-- الخطوة 1: إنشاء bucket للصور (إذا لم يكن موجوداً)
-- يجب تنفيذ هذا من Supabase Dashboard -> Storage -> New bucket

-- اسم الـ bucket: listing-images
-- جعله Public: نعم

-- ============================================
-- الخطوة 2: تشغيل هذا الكود في SQL Editor
-- ============================================

-- حذف السياسات القديمة (إن وجدت)
DROP POLICY IF EXISTS "Public Access" ON storage.objects;
DROP POLICY IF EXISTS "Authenticated users can upload" ON storage.objects;
DROP POLICY IF EXISTS "Users can update own files" ON storage.objects;
DROP POLICY IF EXISTS "Users can delete own files" ON storage.objects;

-- السماح للجميع بقراءة الصور
CREATE POLICY "Public Access"
ON storage.objects FOR SELECT
USING (bucket_id = 'listing-images');

-- السماح للمستخدمين المسجلين برفع الصور
CREATE POLICY "Authenticated users can upload"
ON storage.objects FOR INSERT
WITH CHECK (
    bucket_id = 'listing-images' 
    AND auth.role() = 'authenticated'
);

-- السماح للمستخدمين بتحديث ملفاتهم
CREATE POLICY "Users can update own files"
ON storage.objects FOR UPDATE
USING (
    bucket_id = 'listing-images' 
    AND auth.uid()::text = (storage.foldername(name))[2]
);

-- السماح للمستخدمين بحذف ملفاتهم
CREATE POLICY "Users can delete own files"
ON storage.objects FOR DELETE
USING (
    bucket_id = 'listing-images' 
    AND auth.uid()::text = (storage.foldername(name))[2]
);

-- ============================================
-- خطوات يدوية في Supabase Dashboard:
-- ============================================

-- 1. اذهب إلى: Storage في القائمة الجانبية
-- 2. اضغط "New bucket"
-- 3. اسم الـ bucket: listing-images
-- 4. فعّل "Public bucket" ✓
-- 5. اضغط "Create bucket"

-- بعد ذلك، شغّل الأوامر SQL أعلاه في SQL Editor

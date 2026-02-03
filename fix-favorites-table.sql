-- =========================================
-- إصلاح جدول المفضلة - TAJJIR
-- قم بتشغيل هذا في Supabase SQL Editor
-- =========================================

-- 1. تأكد من وجود جدول المفضلة
CREATE TABLE IF NOT EXISTS favorites (
  id UUID DEFAULT gen_random_uuid() PRIMARY KEY,
  user_id UUID REFERENCES auth.users(id) ON DELETE CASCADE,
  listing_id UUID REFERENCES listings(id) ON DELETE CASCADE,
  created_at TIMESTAMPTZ DEFAULT NOW(),
  UNIQUE(user_id, listing_id)
);

-- 2. تمكين Row Level Security
ALTER TABLE favorites ENABLE ROW LEVEL SECURITY;

-- 3. حذف السياسات القديمة (إذا وجدت)
DROP POLICY IF EXISTS "Users can view their own favorites" ON favorites;
DROP POLICY IF EXISTS "Users can insert their own favorites" ON favorites;
DROP POLICY IF EXISTS "Users can delete their own favorites" ON favorites;

-- 4. إنشاء السياسات الجديدة
-- السماح للمستخدمين بعرض مفضلاتهم
CREATE POLICY "Users can view their own favorites" ON favorites
  FOR SELECT USING (auth.uid() = user_id);

-- السماح للمستخدمين بإضافة إلى مفضلاتهم
CREATE POLICY "Users can insert their own favorites" ON favorites
  FOR INSERT WITH CHECK (auth.uid() = user_id);

-- السماح للمستخدمين بحذف من مفضلاتهم
CREATE POLICY "Users can delete their own favorites" ON favorites
  FOR DELETE USING (auth.uid() = user_id);

-- 5. إنشاء فهرس للأداء الأفضل
CREATE INDEX IF NOT EXISTS idx_favorites_user_id ON favorites(user_id);
CREATE INDEX IF NOT EXISTS idx_favorites_listing_id ON favorites(listing_id);

-- =========================================
-- تم! جدول المفضلة جاهز للاستخدام
-- =========================================

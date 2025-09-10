# 🧑‍🏫 Relationships bo‘yicha 40 ta Practice Task

---

## 🔹 1:1 (One-to-One) – *Talaba & Passport misolida*

1. `students` va `passports` jadvalini yarat (har bir talabaning bitta passporti bo‘lsin).
2. 3 ta student qo‘sh va ularga passport ber.
3. INNER JOIN orqali student + passport ro‘yxatini chiqar.
4. Passport raqami bo‘yicha studentni top.
5. Passport jadvalida `UNIQUE` constraint qo‘sh.
6. Student o‘chirilib ketganda passport ham o‘chib ketishini test qil.
7. Passporti yo‘q studentlarni chiqar.
8. Student va passportni birgalikda qo‘shadigan query yoz.
9. Student ID’si orqali uning passport ma’lumotlarini chiqar.
10. Passport ID’si orqali egasini top.

---

## 🔹 1\:N (One-to-Many) – *Ustoz & Talaba misolida*

1. `teachers` va `students` jadvalini yarat.
2. 2 ta ustoz va 5 ta student qo‘sh, studentlarni ustozlarga bog‘la.
3. Har bir studentning ustozini chiqar.
4. Har bir ustoz nechta talaba o‘qitayotganini chiqar.
5. Ustoz o‘chsa, studentning `teacher_id` NULL bo‘lishini test qil.
6. Studentlarni ustoz ismi bo‘yicha sarala.
7. Eng ko‘p talaba o‘qitayotgan ustozni top.
8. Ustozisiz qolgan studentlarni chiqar.
9. Studentlarni yoshi bo‘yicha tartibla va ularning ustozini chiqar.
10. Har bir ustoz bo‘yicha studentlarning o‘rtacha yoshini hisobla.

---

## 🔹 M\:N (Many-to-Many) – *Student & Course misolida*

1. `students`, `courses`, `student_courses` jadvalini yarat.
2. 3 ta student va 3 ta course qo‘sh.
3. Studentlarni kurslarga yozdir (kamida 2 ta kurs).
4. JOIN orqali har bir studentning kurslarini chiqar.
5. JOIN orqali har bir kursda nechta student borligini hisobla.
6. Studentning qatnashmagan kurslarini top.
7. Kursda qatnashmagan studentlarni top.
8. Biror kursni o‘chirib, `ON DELETE CASCADE` ishlashini test qil.
9. Har bir studentning nechta kursi borligini hisobla.
10. Eng ko‘p kursda qatnashayotgan studentni top.

---

## 🔹 Self-Referencing (Recursive) – *Xodim & Boshliq misolida*

1. `employees` jadvalini yarat (`manager_id` self-foreign key).
2. 1 ta direktor, 2 ta team lead va 3 ta developer qo‘sh.
3. Har bir xodimning boshlig‘ini chiqar.
4. Boshlig‘i yo‘q xodimlarni top (direktor).
5. Har bir boshliq nechta odam boshqarayotganini hisobla.
6. Malikaning jamoasidagi xodimlarni chiqar.
7. Har bir xodimni boshlig‘i bilan birga chiqar (JOIN).
8. Boshliqni o‘chirib, `ON DELETE SET NULL` ishlashini test qil.
9. Eng katta jamoaga ega boshliqni top.
10. Recursive CTE yordamida “Aziz → Bobur → Malika → Dilshod” kabi boshliq zanjirini chiqar.

# Dastur O‘rnatish Yo‘riqnomasi

Dasturni ishlatish uchun quyidagi bosqichlarni bajaring.

## 1-qadam: Dastur faylini yuklab olish

1. GitHub repository sahifasini oching.
2. **Actions** bo‘limiga kiring.
3. **Build Windows installer** workflow'ini tanlang.
4. Eng so‘nggi muvaffaqiyatli (**Success**) build'ni oching.
5. Sahifaning pastki qismidagi **Artifacts** bo‘limini toping.
6. Masalan, **DFIN-DSKEYS-FULL-v4.1** nomli faylni bosing.
7. ZIP fayl yuklab olinadi.
8. ZIP faylni oching va ichidagi `.exe` faylni chiqaring.

> Eslatma: GitHub akkauntiga kirgan bo‘lishingiz kerak, aks holda Artifact fayllarini yuklab olish imkoniyati bo‘lmasligi mumkin.


## 2-qadam: Python o‘rnatish

Windows Terminal yoki Command Prompt oynasini oching va quyidagi buyruqni kiriting:

```cmd
winget install Python.Python.3.13
```

O‘rnatish yakunlangach tekshiring:

```cmd
py --version
```



## 3-qadam: Kerakli kutubxonalarni o‘rnatish

Quyidagi buyruqni ishga tushiring:

```cmd
py -m pip install --upgrade cryptography send2trash
```



## 4-qadam: Dasturni ishga tushirish

1. Artifact ichidan chiqarilgan `.exe` faylni ishga tushiring.
2. Agar Windows xavfsizlik ogohlantirishi chiqsa:
   - **More info** tugmasini bosing.
   - **Run anyway** tugmasini bosing.
3. Dastur avtomatik ravishda ishga tushadi.



## Muammo yuzaga kelsa

Python o‘rnatilganini tekshiring.

`cryptography` va `send2trash` kutubxonalari o‘rnatilganini tekshiring.

 Eng so‘nggi GitHub Action build'idan yuklab olayotganingizga ishonch hosil qiling.

 Kompyuterni qayta ishga tushirib ko‘ring.


<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:8A2BE2,100:00FF88&height=180&section=header&text=Chemistry%20Teleport&fontSize=42&fontColor=ffffff&fontAlignY=40" width="100%" alt="Header" />

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21-00FF88?style=for-the-badge&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Pack Format](https://img.shields.io/badge/Pack_Format-48-purple?style=for-the-badge)](https://github.com/X1miya/chemistry_teleport)
[![Frames](https://img.shields.io/badge/Animation-200_Frames-blueviolet?style=for-the-badge)](https://github.com/X1miya/chemistry_teleport)
[![Author](https://img.shields.io/badge/Creator-X1miya-00FF88?style=for-the-badge)](https://github.com/X1miya)

<p align="center">
  <b>Датапак кинематографической телепортации с эффектом затягивания в портал.</b><br/>
  Использовался в финальном эпизоде видео:<br/>
  <i>«День №7 ФИНАЛ | Нуб учится строительству в Майнкрафте»</i>
</p>

</div>

---

### ✨ Как устроена механика

Датапак реализует полноценную покадровую VFX-анимацию портала прямо в ванильном Minecraft:

1. 🌀 **Плавное притяжение (`suck_step`, `suck_apply`)** — сущности или игрок плавно разгоняются и затягиваются в центр энергетического вихря.
2. 🎬 **200 покадровых анимаций (`frames/frame_*.mcfunction`)** — плавное воспроизведение динамического портала со звуковым и визуальным сопровождением частиц.
3. ⚡ **Финальный импульс (`teleport`, `suck_finish`)** — мгновенный переход в конечную точку назначения с кинематографичным завершением.

---

### 🚀 Быстрый старт

1. Скопируйте содержимое репозитория в папку датапаков вашего сохранения:
   ```text
   .minecraft/saves/<Ваш_Мир>/datapacks/chemistry_teleport/
   ```
2. В игре выполните:
   ```mcfunction
   /reload
   ```
3. Для ручного запуска анимации телепортации выполните:
   ```mcfunction
   /function chem_tp:teleport
   ```

---

### ⚙️ Кастомизация

Вы можете изменить конечные координаты телепортации, отредактировав команду в файле:
`data/chem_tp/function/teleport.mcfunction` или `data/chem_tp/function/suck_finish.mcfunction`.

---

<div align="center">

[![YouTube](https://img.shields.io/badge/YouTube-@X1miya-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miya)
[![Telegram](https://img.shields.io/badge/Telegram-Канал_Химии-blue?style=flat-square&logo=telegram)](https://t.me/Chemistry_LaboratoryX)
[![Discord](https://img.shields.io/badge/Discord-Сервер-5865F2?style=flat-square&logo=discord&logoColor=white)](https://discord.gg/heDhMS8sjR)

</div>

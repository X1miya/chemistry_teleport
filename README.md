<div align="center">

<img src="https://capsule-render.vercel.app/api?type=waving&color=0:0D1117,50:8A2BE2,100:00FF88&height=180&section=header&text=Chemistry%20Teleport&fontSize=42&fontColor=ffffff&fontAlignY=40" width="100%" alt="Header" />

<p align="center">
  <img src="https://img.shields.io/badge/Language-English-00FF88?style=flat-square" alt="English" />
  <a href="README_RU.md">
    <img src="https://img.shields.io/badge/%D0%AF%D0%B7%D1%8B%D0%BA-%D0%A0%D1%83%D1%81%D1%81%D0%BA%D0%B8%D0%B9-0D1117?style=flat-square&logo=googletranslate&logoColor=white" alt="Русская версия" />
  </a>
</p>

[![Minecraft](https://img.shields.io/badge/Minecraft-1.21-00FF88?style=for-the-badge&logo=minecraft&logoColor=white)](https://www.minecraft.net/)
[![Pack Format](https://img.shields.io/badge/Pack_Format-48-purple?style=for-the-badge)](https://github.com/X1miya/chemistry_teleport)
[![Frames](https://img.shields.io/badge/Animation-200_Frames-blueviolet?style=for-the-badge)](https://github.com/X1miya/chemistry_teleport)
[![Author](https://img.shields.io/badge/Creator-X1miya-00FF88?style=for-the-badge)](https://github.com/X1miya)

<p align="center">
  <b>Cinematic portal-pull teleportation VFX datapack for Minecraft Java Edition.</b><br/>
  Featured in the finale episode:<br/>
  <i>"Day #7 FINALE | Noob Learns Building in Minecraft"</i>
</p>

</div>

---

### ✨ How It Works

This datapack renders a full frame-by-frame vanilla portal VFX animation with smooth entity pull:

1. 🌀 **Smooth Vortex Pull (`suck_step`, `suck_apply`)** — players or entities are gradually accelerated and pulled toward the center of the energy vortex.
2. 🎬 **200 Frame-by-Frame Animations (`frames/frame_*.mcfunction`)** — fluid playback of a dynamic particle portal with synchronized sound effects.
3. ⚡ **Final Impulse (`teleport`, `suck_finish`)** — instant teleportation to the target coordinates with a cinematic finish.

---

### 🚀 Quick Start

1. Copy the repository contents into your world's datapacks folder:
   ```text
   .minecraft/saves/<Your_World>/datapacks/chemistry_teleport/
   ```
2. Reload the datapack in-game:
   ```mcfunction
   /reload
   ```
3. Trigger the teleportation animation manually:
   ```mcfunction
   /function chem_tp:teleport
   ```

---

### ⚙️ Customization

Edit the destination teleport coordinates inside:
`data/chem_tp/function/teleport.mcfunction` or `data/chem_tp/function/suck_finish.mcfunction`.

---

<div align="center">

[![YouTube](https://img.shields.io/badge/YouTube-@X1miya-red?style=flat-square&logo=youtube)](https://www.youtube.com/@X1miya)
[![Telegram](https://img.shields.io/badge/Telegram-Chemistry_Channel-blue?style=flat-square&logo=telegram)](https://t.me/Chemistry_LaboratoryX)
[![Discord](https://img.shields.io/badge/Discord-Server-5865F2?style=flat-square&logo=discord&logoColor=white)](https://discord.gg/heDhMS8sjR)

</div>

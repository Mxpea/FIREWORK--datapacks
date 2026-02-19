# FIREWORK Datapack

## 简短说明

- 一个用于 Minecraft (1.21.11 环境) 的烟花/粒子效果 datapack，作者：Mxpea（Aurelith/Mxpea）。
- 自动初始化计分板、存储，并提供大量基于函数的特效、字形和烟花召唤逻辑。

## 主要功能

- 周期性彩虹 & 颜色生成：参见函数 [`firework:tick`](firework/data/firework/function/tick.mcfunction) 与 [`firework:effects/rainbow/rainbow_color_gen`](firework/data/firework/function/effects/rainbow/rainbow_color_gen.mcfunction)。
- 随机烟花效果生成与召唤：参见 [`firework:run/ran_firework`](firework/data/firework/function/run/ran_firework.mcfunction) 及其子函数（如 [`firework:effects/fireworks_ran/ran_type`](firework/data/firework/function/effects/fireworks_ran/ran_type.mcfunction)）。
- 粒子与像素字／方块生成：参见像素生成 [`firework:pixel_square/pixel_gen`](firework/data/firework/function/pixel_square/pixel_gen.mcfunction) 与字母集合（示例：[`firework:letters/a`](firework/data/firework/function/letters/a.mcfunction)）。
- 坐标/环形排列工具：参见 [`firework:effects/ring/math`](firework/data/firework/function/effects/ring/math.mcfunction) 与 [`firework:effects/ring/poz`](firework/data/firework/function/effects/ring/poz.mcfunction)。

## 快速使用指南

1. 安装：将本仓库（或其中的 `firework/` 文件夹）放入 Minecraft 世界的 datapacks 目录。
   - 包信息见 [firework/pack.mcmeta](firework/pack.mcmeta)。
2. 在游戏中运行 `/reload`，加载时会执行 [`firework:load`](firework/data/firework/function/load.mcfunction)（该函数会创建计分板与初始状态）。
   - 全局 tick 注册在 [firework/data/minecraft/tags/function/tick.json](firework/data/minecraft/tags/function/tick.json) 中，服务器/单人世界会每刻调用 [`firework:tick`](firework/data/firework/function/tick.mcfunction)。
3. 调用特定效果示例：
   - 生成随机烟花：`/function firework:run/ran_firework` （参见 [`firework:run/ran_firework`](firework/data/firework/function/run/ran_firework.mcfunction)）。
   - 生成变色 dust 粒子：先运行 [`firework:effects/randon_color_gen`](firework/data/firework/function/effects/randon_color_gen.mcfunction) 与 [`firework:effects/random_first_color`](firework/data/firework/function/effects/random_first_color.mcfunction)，再调用 [`firework:effects/ran_dust_gen`](firework/data/firework/function/effects/ran_dust_gen.mcfunction)。
   - 绘制字母：例如 `/function firework:letters/a` （参见 [`firework:letters/a`](firework/data/firework/function/letters/a.mcfunction)）。
4. 进阶：许多函数依赖于 storage/stats 与 scoreboard（在 [`firework:load`](firework/data/firework/function/load.mcfunction) 中初始化），可以通过修改存储值或计分板来自定义效果参数。

## 文件与入口（常用）

- 包描述：[firework/pack.mcmeta](firework/pack.mcmeta)  
- 自动加载与周期钩子：
  - [`firework:load`](firework/data/firework/function/load.mcfunction) — 初始化
  - [firework/data/minecraft/tags/function/load.json](firework/data/minecraft/tags/function/load.json) — 注册 load
  - [`firework:tick`](firework/data/firework/function/tick.mcfunction) — 周期处理
  - [firework/data/minecraft/tags/function/tick.json](firework/data/minecraft/tags/function/tick.json) — 注册 tick
- 粒子 / 色彩生成：[`firework:effects/randon_color_gen`](firework/data/firework/function/effects/randon_color_gen.mcfunction), [`firework:effects/ran_dust_gen`](firework/data/firework/function/effects/ran_dust_gen.mcfunction)
- 烟花生成：[`firework:run/ran_firework`](firework/data/firework/function/run/ran_firework.mcfunction) 与子函数（目录：firework/data/firework/function/effects/fireworks_ran/）
- 字母/像素：目录 firework/data/firework/function/letters/（示例：[`firework:letters/a`](firework/data/firework/function/letters/a.mcfunction)）与像素生成器 [`firework:pixel_square/pixel_gen`](firework/data/firework/function/pixel_square/pixel_gen.mcfunction)

## 注意与许可

- 本仓库包含外部 API 子模块（已在 .gitignore 忽略）：[/.gitignore](.gitignore)。
- 项目采用 MIT 许可：见 [LICENSE](LICENSE)。

仓库与开发分支

- 仓库名：FIREWORK--datapacks（分支信息见仓库元信息）。

如需定制某个效果或示例命令位置，请指定要修改的函数文件（例如上文列举的某个路径），可直接在对应文件中编辑调用参数或 storage/scoreboard 初始值。

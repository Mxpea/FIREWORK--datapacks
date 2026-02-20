<p align="center">
    <img width="690" src="web/firework_title.png" alt="title">  
</p>

## 简短说明

- 一个用于 Minecraft (1.21.11 环境) 的烟花/粒子效果 datapack，作者：Mxpea（Aurelith/Mxpea）。
- 自动初始化计分板、存储，并提供大量基于函数的特效、字形和烟花召唤逻辑。

## 主要功能

- 周期性彩虹 & 颜色生成：参见函数 [`firework:tick`](firework/data/firework/function/tick.mcfunction) 与 [`firework:effects/rainbow/rainbow_color_gen`](firework/data/firework/function/effects/rainbow/rainbow_color_gen.mcfunction)。
- 随机烟花效果生成与召唤：参见 [`firework:run/ran_firework`](firework/data/firework/function/run/ran_firework.mcfunction) 及其子函数（如 [`firework:effects/fireworks_ran/ran_type`](firework/data/firework/function/effects/fireworks_ran/ran_type.mcfunction)）。
- 粒子与像素字／方块生成：参见像素生成 [`firework:pixel_square/pixel_gen`](firework/data/firework/function/pixel_square/pixel_gen.mcfunction) 与字母集合（示例：[`firework:letters/a`](firework/data/firework/function/letters/a.mcfunction)）。
- 下落方块彩色效果：参见 [`firework:effects/ran_falling_block/ran_fallingblock_gen`](firework/data/firework/function/effects/ran_falling_block/ran_fallingblock_gen.mcfunction) 以及相关函数 [`fallingblock_summon.mcfunction`](firework/data/firework/function/effects/ran_falling_block/fallingblock_summon.mcfunction) 和 [`colorful_color_gen.mcfunction`](firework/data/firework/function/effects/ran_falling_block/colorful_color_gen.mcfunction)。
- 坐标/环形排列工具：参见 [`firework:effects/ring/math`](firework/data/firework/function/effects/ring/math.mcfunction) 与 [`firework:effects/ring/poz`](firework/data/firework/function/effects/ring/poz.mcfunction)。
- 其他工具函数与演示：run/colord_block_exp、run/rainbow、tick/*（rainbow_fallingblock、rainbow_tail）等。

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

## 示例命令（快速上手）

- 重新加载 datapack：/reload
- 生成随机烟花：/function firework:run/ran_firework
- 绘制字母 A：/function firework:letters/a
- 生成随机闪光：/function firework:run/ran_flash_10
- 生成随机颜色 dust：/function firework:run/ran_dust
- 生成圆环（示例函数）：/function firework:effects/ring/math

## 自定义要点（快速说明）

- 大多数效果通过 storage: firework:temp 与 scoreboard 控制，修改 firework:load 可改变初始计分板与存储键。
- 像素字大小与位置由 pixel_square 下的参数与调用位置决定，打开相应函数可调整 pixel_X / pixel_Y 值。
- 烟花参数（类型、颜色、飞行高度等）在 effects/fireworks_ran 目录下的子函数中定义，可按需修改或新增类型。

## 常见问题

- “/function 无反应”：确认 datapack 已放入 world/datapacks，执行 /reload，并检查 load.json/tick.json 注册是否存在。
- “颜色/效果不正确”：检查对应 effects/*.mcfunction 中的颜色生成逻辑（random_first_color / random_second_color / rainbow）。

## 贡献与开发

- 欢迎提交 issue 或 PR 请遵循简洁 commit 说明与包含修改说明。

## 许可证

- 项目采用 MIT 许可（见 LICENSE）。

如需定制某个效果或示例命令位置，请指定要修改的函数文件（例如上文列举的某个路径），可直接在对应文件中编辑调用参数或 storage/scoreboard 初始值。

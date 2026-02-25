<p align="center">
    <img width="690" src="web/firework_title.png" alt="title">  
</p>

## 简介

- 适用于 Minecraft 1.21.11 的烟花 / 粒子效果 datapack。
- 作者：Mxpea（Aurelith / Mxpea）。
- 自动初始化计分板与 storage，提供随机烟花、彩虹、环形、射线、线段、字母像素等效果。

## 功能概览

- 自动加载与 Tick
  - 加载函数：[`firework:load`](firework/data/firework/function/load.mcfunction)
  - 周期函数：[`firework:tick`](firework/data/firework/function/tick.mcfunction)
  - 注册文件：[load.json](firework/data/minecraft/tags/function/load.json) / [tick.json](firework/data/minecraft/tags/function/tick.json)

- 随机烟花
  - 主入口：[`firework:fireworks/ran_firework`](firework/data/firework/function/fireworks/ran_firework.mcfunction)
  - 参数子流程：[`effects/fireworks_ran/`](firework/data/firework/function/effects/fireworks_ran)

- 粒子与彩虹
  - 彩虹数值更新：[`firework:effects/rainbow/rainbow_color_gen`](firework/data/firework/function/effects/rainbow/rainbow_color_gen.mcfunction)
  - 彩虹粒子入口：[`firework:run/rainbow`](firework/data/firework/function/run/rainbow.mcfunction)
  - 随机闪光 x10：[`firework:run/ran_flash_10`](firework/data/firework/function/run/ran_flash_10.mcfunction)
  - 随机 Dust：[`firework:run/ran_dust`](firework/data/firework/function/run/ran_dust.mcfunction)

- 环形、射线、线段
  - 环形：[`firework:run/ring_normal`](firework/data/firework/function/run/ring_normal.mcfunction)、[`firework:run/ring_rainbow`](firework/data/firework/function/run/ring_rainbow.mcfunction)
  - 射线：[`firework:run/ray_summon`](firework/data/firework/function/run/ray_summon.mcfunction)
  - 线段：[`firework:run/line_summon`](firework/data/firework/function/run/line_summon.mcfunction)

- 其他效果与工具
  - 彩色下落方块爆散：[`firework:run/colord_block_exp`](firework/data/firework/function/run/colord_block_exp.mcfunction)
  - UUID 工具：[`firework:gu/generate`](firework/data/firework/function/gu/generate.mcfunction)、[`firework:gu/convert`](firework/data/firework/function/gu/convert.mcfunction)、[`firework:tools/uuid_get`](firework/data/firework/function/tools/uuid_get.mcfunction)
  - 字母像素：[`letters/`](firework/data/firework/function/letters)

## 快速开始

1. 将 `firework/` 放入世界目录 `datapacks/`。
2. 运行任意入口函数测试效果（见下方示例命令）。

> 说明：[`firework:load`](firework/data/firework/function/load.mcfunction) 会初始化大量计分板（如 `rings`、`ray_settings`、`line` 等）与 storage 键。

## 示例命令

- `/function firework:fireworks/ran_firework`：生成一次随机参数烟花（颜色/拖尾/闪烁/类型随机）。
- `/function firework:run/ran_flash_10`：连续触发 10 次随机闪光粒子，适合快速营造爆闪效果。
- `/function firework:run/ran_dust`：生成随机颜色的 dust 粒子。
- `/function firework:run/rainbow`：按当前彩虹参数生成彩虹粒子。
- `/function firework:run/ring_normal`：以固定粒子（end_rod）生成圆环。
- `/function firework:run/ring_rainbow`：以彩虹粒子生成圆环。
- `/function firework:run/ray_summon`：生成射线效果（需先设置速度/寿命等参数）。
- `/function firework:run/line_summon`：根据起止点与步数绘制线段粒子。
- `/function firework:run/colord_block_exp`：生成彩色下落方块爆散效果（依赖 Motion API）。
- `/function firework:letters/a`：绘制字母 A 的像素图案。
- `/function firework:gu/generate`：生成 UUID 数据并写入相关存储。
- `/function firework:tools/uuid_get`：读取并显示当前实体/上下文 UUID 信息。

## 参数设置提示（常用）

- 环形效果依赖：`steps rings`、`distance rings`。
- 射线效果依赖：`speed ray_settings`、`lifetime ray_settings`、`offset_x ray_settings`、`offset_y ray_settings`。
- 线段效果依赖：`steps line`，并可通过 `tag @s add set_poz` 记录终点坐标。

## 目录索引

- 入口函数目录：[run/](firework/data/firework/function/run)
- 烟花参数目录：[effects/fireworks_ran/](firework/data/firework/function/effects/fireworks_ran)
- 环形计算目录：[effects/ring/](firework/data/firework/function/effects/ring)
- 射线目录：[ray/](firework/data/firework/function/ray)
- 线段目录：[line/](firework/data/firework/function/line)
- 字母目录：[letters/](firework/data/firework/function/letters)

## 依赖说明

- 本仓库包含 `Mxpea.s.Motion.API.V1.3.1/`。其中部分彩色下落方块效果（如 [`firework:run/colord_block_exp`](firework/data/firework/function/run/colord_block_exp.mcfunction)）依赖该 API。

## 常见问题

- `/function` 无反应：确认 datapack 路径正确并执行 `/reload`，检查 [load.json](firework/data/minecraft/tags/function/load.json) 与 [tick.json](firework/data/minecraft/tags/function/tick.json) 是否存在。
- 射线 / 线段不执行：先设置必要计分板参数（见上方“参数设置提示”）。

## 许可证

- 项目采用 MIT 许可，详见 [LICENSE](LICENSE)。

## 鸣谢

- 项目包含来自 [gu](https://github.com/gibbsly/gu) 的 UUID 相关代码，原始许可证为 The Unlicense；本项目按其条款进行再分发。

如需继续补充“新增内容”，可直接告知要加入的命令、函数路径或效果截图位置。

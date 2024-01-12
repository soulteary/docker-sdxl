# Docker Stable Diffusion XL (SDXL)

简单、靠谱的 SDXL Docker 使用方案。

**欢迎一键三连**🌟👏

![](.github/preview.png)

## 镜像下载地址

- 百度网盘: [SDXL 1.0](https://pan.baidu.com/s/1WKZEPFCvCpg-e4KlDT6bLw?pwd=soul#list/path=%2F)
- 运行环境: [Docker 模型运行环境](https://pan.baidu.com/s/1MjJrtubxs-APvlEBO0XYCQ?pwd=soul#list/path=%2F) ，不想自己构建的同学可选

## 使用教程

- 第一篇：《[使用 Docker 快速上手 Stability AI 的 SDXL 1.0 正式版](https://zhuanlan.zhihu.com/p/646706041)》
- 第二篇：《[使用 Docker 和 Diffusers 快速上手 Stable Video Diffusion 图生视频大模型](https://soulteary.com/2024/01/08/stable-video-diffusion-quick-start-with-docker-and-diffusers.html)》
- 第三篇：《[Stable Diffusion XL Turbo 文生图和图生图实践](https://soulteary.com/2024/01/13/stable-diffusion-xl-turbo-image-generation.html)》


- 环境准备：《[基于 Docker 的深度学习环境：Windows 篇](https://zhuanlan.zhihu.com/p/646758615)》/ 《[基于 Docker 的深度学习环境：入门篇](https://soulteary.com/2023/03/22/docker-based-deep-learning-environment-getting-started.html)》
- 模型下载：《[节省时间：AI 模型靠谱下载方案汇总](https://soulteary.com/2024/01/09/summary-of-reliable-download-solutions-for-ai-models.html)》
- 疑难杂症：《[修复 OpenCV 依赖错误的小工具：OpenCV Fixer](https://soulteary.com/2024/01/07/fix-opencv-dependency-errors-opencv-fixer.html)》/ 《[在 Nvidia Docker 容器编译构建显存优化加速组件 xFormers](https://soulteary.com/2024/01/12/xformers-source-code-compilation-with-nvidia-docker.html)》

## 快速启动

将模型文件中的 `stabilityai` 放在当前目录，然后执行 Docker 命令：

```bash
docker run --gpus all --ipc=host --ulimit memlock=-1 --ulimit stack=67108864 --rm -it -v `pwd`/stabilityai/:/app/stabilityai -p 7860:7860 soulteary/sdxl:runtime
```

## 额外计划

- 集成 2～3 种主流 UI

## 手动构建

```bash
# 构建基础镜像
bash scripts/make-sdxl-base.sh
# 构建运行时镜像
bash scripts/make-sdxl-runtime.sh

# （可选）构建一键包，将模型下载至 `stabilityai` 目录后
bash scripts/make-sdxl-one-click.sh
```

### Docker 镜像说明

```bash
# 和官方镜像保持一致的 PyTorch 版本
soulteary/sdxl:runtime
# 包含所有模型的镜像
soulteary/sdxl:all

# xformers 版本，PyTorch 版本较低
soulteary/sdxl:runtime-xformers
# 包含所有模型的镜像
soulteary/sdxl:all-xformers
```

## 相关项目

- [CompVis/stable-diffusion](https://github.com/CompVis/stable-diffusion)

# [Shairport Sync](https://github.com/mikebrady/shairport-sync) - AirPlay Audio Player

> 当前版本为 **v3.3.1**，源镜像最新版本 [![GitHub repo](https://flat.badgen.net/github/release/mikebrady/shairport-sync?icon=github&label=mikebrady/shairport-sync)](https://github.com/mikebrady/shairport-sync)

![Shairport Sync](https://i.loli.net/2019/06/19/5d0a3a7f6738239207.jpg)

---

## TL;DR;

The quickest way to get started is using [docker-compose](https://docs.docker.com/compose/).

```bash
mkdir -p /usr/local/docker/shairport-sync ; cd $_
git svn clone https://github.com/y0ngb1n/dockerized/trunk/shairport-sync .
docker-compose up -d
```

---

## 配置音频

**Step 1：调试音频**

```bash
# ALSA 工具，其中包含的 alsamixer 工具允许用户在控制台或终端中配置声音设备
sudo apt install alsa-utils

# 查看可用音频输出设备
aplay -l # OR, aplay -L

# 测试声卡是否工作
speaker-test --device=hw:0 -r44100 -c2

# 调整设备音量，上下按键调整音量
# 调整过后不会自动保存，重新开机会恢复默认状态
alsamixer

# 手动保存调整后的状态
alsactl store
```

**Step 2：安装声卡驱动**（如果 `aplay -l` 提示无音频设备，可尝试安装声卡驱动）

```bash
sudo apt install alsa-base pulseaudio
sudo alsa force-reload

# 重启后回到 Step 1 进行检查
sudo reboot
```

**Step 3：修改配置 [`shairport-sync.conf`](https://github.com/mikebrady/shairport-sync/blob/master/README.md#configuring-shairport-sync)**

```bash
# 查看 Shairport Sync 版本信息
docker-compose exec shairport-sync shairport-sync -V
```

通过 `vi /etc/shairport-sync.conf` 修改相关配置：

```
general = {
  name = "Shairport Sync Player";
};

alsa = {
  output_device = "hw:0";
  mixer_control_name = "PCM";
};

diagnostics = {
  log_verbosity = 0; // "0" means no debug verbosity, "3" is most verbose.
};
```

## 参考链接

+ https://github.com/mikebrady/shairport-sync
+ https://github.com/mikebrady/shairport-sync/blob/master/INSTALL.md
+ https://github.com/mikebrady/shairport-sync/issues/741
+ https://github.com/kevineye/docker-shairport-sync
+ https://hub.docker.com/r/orbsmiv/shairport-sync-rpi
+ https://coldnew.github.io/70c5ffb9/
+ https://wiki.archlinux.org/index.php/Advanced_Linux_Sound_Architecture_(%E7%AE%80%E4%BD%93%E4%B8%AD%E6%96%87)
+ https://www.jianshu.com/p/cf24fc8dbdea
+ https://zh.wikipedia.org/zh-hans/PulseAudio
+ https://linuxhint.com/pulse_audio_sounds_ubuntu/
+ https://www.maketecheasier.com/fix-no-sound-issue-ubuntu/
+ https://blog.csdn.net/multimicro/article/details/82528730
+ https://lado.me/2017/05/14/mixer-in-linux-alsamixer/

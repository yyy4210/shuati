# 变电刷题网页版

两个单文件刷题 App（一次 379 题、二次 593 题），无任何外部依赖，部署到任意静态网页托管即可在 iPhone 上使用。

## 文件说明

| 文件 | 内容 |
| --- | --- |
| `index.html` | 首页，两个 App 的入口 |
| `yici.html` | 变电一次刷题（微信版 2026-08-17） |
| `erci.html` | 变电二次刷题（微信版 2026-08-17） |
| `deploy.ps1` | 一键更新脚本（更新题库后运行） |

## 推荐：部署到 GitHub Pages（免费、无需实名）

1. 打开 https://github.com 注册/登录账号。
2. 右上角 + → New repository：
   - Repository name 填 `shuati`
   - 选择 **Public**
   - 不要勾选 "Add a README file"
   - 点 Create repository
3. 在新建仓库页面里，复制 "…or push an existing repository" 下面两条命令中的第二条：
   `git remote add origin https://github.com/你的用户名/shuati.git`
4. 在本文件夹（shuati-deploy）打开 PowerShell，依次运行：
   ```powershell
   git remote add origin https://github.com/你的用户名/shuati.git
   git push -u origin main
   ```
5. 回到 GitHub 仓库页面：Settings → Pages → Source 选 `Deploy from a branch` → Branch 选 `main` + `/ (root)` → Save。
6. 等 1~2 分钟，打开网址：
   `https://你的用户名.github.io/shuati/`

之后在 iPhone Safari 打开该网址，点右上角「分享」→「添加到主屏幕」即可。

## 更新题库版本

把新的 `yici.html` / `erci.html` 复制进本文件夹覆盖旧文件，然后运行：

```powershell
.\deploy.ps1
```

## 备选：腾讯云静态托管（国内访问快，需实名认证）

1. 打开 https://console.cloud.tencent.com/edgeone/pages 开通「EdgeOne Pages」静态托管（有免费额度）。
2. 新建站点，把本文件夹的 `index.html`、`yici.html`、`erci.html` 拖进控制台上传。
3. 部署完成后得到网址，直接在 iPhone 打开即可。

## 注意

- 做题进度（存档）保存在**手机浏览器本地**，同一网址同一手机才共享；换手机不会自动同步。
- 清除 Safari 缓存/浏览数据会清掉存档，请勿随意清理。
- 存档按网址隔离，一次（yici_）和二次（erci_）互不影响。

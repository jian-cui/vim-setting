# NeoVim配置

## 配置安装
1. `brew install neovim`
2. vim增加vim-plug 

   `curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

3. neovim增加vim-plug

    `curl -fLo ~/.nvim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim`

4. git clone https://github.com/jian-cui/vim-setting.git ~/.config/nvim/
5. 打开nvim 执行`:PlugInstall`

## vim-jsbeautify配置
vim-jsbeautify 重置设置[.editorconfig](https://github.com/maksimr/vim-jsbeautify)

## UltiSnips配置
https://keelii.com/2018/08/26/vim-plugin-ultisnips-advanced-tips/

## python配置
很多脚本需要Python支持
1. 正常安装python2及python3之后
```
pip install --user pynvim
pip3 install --user pynvim
```
2. 检测是否支持python2及python3
```
:echo ('python')
:echo ('python3')
```
  需要全部返回1 才成功

# Preparation

WSL2を使用し、Pythonのセットアップが終了している前提となります。

devcontainerでの用意は想定していないので、よしなに。

## Tools

* pyenv: https://github.com/pyenv/pyenv
* oj: https://github.com/online-judge-tools/oj
* template-generator: https://github.com/online-judge-tools/template-generator

## Install pyenv

```bash
curl https://pyenv.run | bash
```

## Setup Python 3.11.4

```bash
pyenv install --list | grep 3.11.4
pyenv install 3.11.4
pyenv versions
pyenv local 3.11.4
```

## Setup PyPy 3.10 (if needed)

```bash
pyenv install --list | grep pypy3
pyenv install pypy3.10-7.3.12
pyenv versions
pyenv local pypy3.10-7.3.12
```

## Setup oj and oj template generator

```bash
pip install online-judge-tools online-judge-template-generator
```

AtCoderにアカウントを作成

```bash
oj login -u {username} -p {password} "https://atcoder.jp"
```

## Setup util commands

```bash
bash setup.sh
```

`prepare.sh` `test.sh` `submit.sh` を簡単に呼び出せるように、ホームディレクトリにシンボリックリンクを用意します。

ホームディレクトリを汚したくない方は実行しないようにお願いします。

## Activate venv

```bash
python -m venv .venv
source .venv/bin/activate
```

## Fetch Problems

引数で渡したURL情報から、contestフォルダ配下に問題ごとのフォルダを作成し、ojにて問題をスクレイピングします。

```bash
~/prepare {url}
```

`url` はAtCoderの各問題のURLをそのままコピペして貼り付けてください

```bash
// example
~/prepare https://atcoder.jp/contests/abs/tasks/practice_1
```

## Test Problems

ojにて、テストを行います。テストの中身を変更したいときは、問題文のフォルダの中でテストファイルを自由に変更してください。

```bash
~/test
```

## Submission

ojにて、解答を提出します。CPythonとPyPyとでコマンドが異なり、デフォルトではCPythonの設定としています。PyPyを使用したい場合は、`submit.sh`の中身を変更してください。

```bash
~/submit
```

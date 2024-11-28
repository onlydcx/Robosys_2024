#!/bin/bash
# SPDX-FileCopyrightText: 2024 Rin Hanaoka <s23c1110vk@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause:

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

# print_divisorsへのテスト

# 12の約数表示
out=$(./print_divisors 12)
[ "${out}" = "[1, 2, 3, 4, 6, 12]" ] || ng "$LINENO" 

# 2048の約数表示
out=$(./print_divisors 2048)
[ "${out}" = "[1, 2, 4, 8, 16, 32, 64, 128, 256, 512, 1024, 2048]" ] || ng "$LINENO"

# 負の場合のエラーチェック
out=$(./print_divisors -1)
[ "$?" = 1 ] || ng "$LINENO"

# 2つ以上の数字が入力された時のエラーチェック
out=$(./print_divisors 10 20)
[ "$?" = 1 ] || ng "$LINENO"

[ "$res" = 0 ] && echo ok
exit "$res"


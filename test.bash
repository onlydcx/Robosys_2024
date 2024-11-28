#!/bin/bash
# SPDX-FileCopyrightText: 2024 Rin Hanaoka <s23c1110vk@s.chibakoudai.jp>
# SPDX-License-Identifier: BSD-3-Clause:

ng () {
        echo ${1}行目が違うよ
        res=1
}

res=0

# print_divisorsへのテスト
out=$(./print_divisors | echo 12)
["${out}" = "[1, 2, 3, 4, 6, 12]"] || ng "$LINENO" 

[ "$res" = 0 ] && echo ok
exit "$res"


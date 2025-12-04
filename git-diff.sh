#!/bin/bash

# Cria diff completo com o -M e -C para detectar renomeações e cópias e mostra a função completa (--function-context)
git diff -M -C -B --pickaxe-all --function-context -a  > diff_full.txt

#!/bin/bash

# Sincroniza o sistema de arquivos
echo "Sincronizando sistema de arquivos..."
sync

# Limpa o cache de memória (PageCache, dentries e inodes)
echo "Limpando o cache de memória..."
sudo sysctl -w vm.drop_caches=3

# Limpa a memória swap
echo "Limpando a memória swap..."
sudo swapoff -a
sudo swapon -a

echo "Cache de memória e swap limpos com sucesso."

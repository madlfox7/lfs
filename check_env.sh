#!/bin/bash

echo "Проверка переменных окружения:"
echo "LFS=$LFS"
echo "LC_ALL=$LC_ALL"
echo "LFS_TGT=$LFS_TGT"
echo "PATH=$PATH"
echo "MAKEFLAGS=$MAKEFLAGS"

echo
echo "Проверка shell:"
echo "Текущий shell: $0"
if [[ $0 == *bash ]]; then
  echo "Shell — bash, как и должно быть."
else
  echo "Внимание: текущий shell не bash!"
fi

echo
echo "Проверка наличия /etc/bash.bashrc (его не должно быть):"
if [ ! -e /etc/bash.bashrc ]; then
  echo "/etc/bash.bashrc отсутствует — отлично."
else
  echo "/etc/bash.bashrc присутствует! Лучше переименовать или удалить."
fi

echo
echo "Проверка доступности make:"
if command -v make > /dev/null; then
  echo "make найден, версия: $(make --version | head -n1)"
else
  echo "make не найден!"
fi

echo
echo "Проверка количества доступных ядер:"
echo "nproc = $(nproc)"

echo
echo "Все проверки завершены."

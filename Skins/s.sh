#!/run/current-system/sw/bin/bash

# Проверяем наличие `unzip`
if ! command -v unzip &>/dev/null; then
    echo "Error: 'unzip' не установлен. Установите его и повторите попытку."
    exit 1
fi

# Обрабатываем все файлы с расширением .osz в текущей директории
for file in *.osz; do
    if [[ -f "$file" ]]; then
        folder_name="${file%.osz}" # Убираем расширение .osz для имени папки
        echo "Распаковываем '$file' в папку '$folder_name'..."
        mkdir -p "$folder_name"   # Создаем папку, если она не существует
        unzip -o "$file" -d "$folder_name" # Распаковываем файл
        echo "Готово!"
    else
        echo "Файлы .osz не найдены в текущей директории."
    fi
done


for file in *.osk; do
    if [[ -f "$file" ]]; then
        folder_name="${file%.osk}" # Убираем расширение .osz для имени папки
        echo "Распаковываем '$file' в папку '$folder_name'..."
        mkdir -p "$folder_name"   # Создаем папку, если она не существует
        unzip -o "$file" -d "$folder_name" # Распаковываем файл
        echo "Готово!"
    else
        echo "Файлы .osk не найдены в текущей директории."
    fi
done

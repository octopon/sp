# !/bin/bash
continuet="Y"
echo "---------------------------------------------------------------------"
echo "       Вас приветствует программа по созданию образа CD-диска"
echo "       С помощью этого уникального скрипта вы сможете создать"
echo "  образ CD-диска, название и наполнение которого вы зададите сами"
echo "Автор этой прекрасной программы: Бондаренко Арина, студентка гр.738-1"
while [ $continuet = "Y" ]
do
echo "---------------------------------------------------------------------"
echo "           Сейчас вы должны ввести путь к каталогу с файлами,        "
echo "               с которыми вы хотите создать образ СD-диска           "
echo "---------------------------------------------------------------------"
exten=".iso"
read -p "Введите путь до каталога: " waytodir
until [ -d $waytodir ]
do
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "                  Очень жаль, но такого каталога нет                 "
echo "         Если хотите ввести путь до каталога еще раз введите Y       "
echo "               Если хотите выйти из программы введите N              "
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
read -p "Введите [Y/N]: " choice
if [ $choice = "Y" ] 
then
read -p "Введите путь до каталога: " waytodir 
else
exit
fi
done
echo "---------------------------------------------------------------------"
echo "       Сейчас вы должны ввести желаемое имя для образа CD-диска      "
echo "---------------------------------------------------------------------" 
read -p  "Введите имя для образа CD-диска: " nameofcd
if [ -e $nameofcd$exten ]
then
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
echo "          Очень жаль, но файл с таким именем уже существует,"
echo "               поэтому имя вашего образа CD-диска будет            "
echo "              $nameofcd + сегодняшняя дата                         "
echo "!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!"
datetoday=$(date +%F)
echo "---------------------------------------------------------------------"
echo "                      Сегодняшняя дата: $datetoday"
totalname=$nameofcd$datetoday 
echo "---------------------------------------------------------------------"
echo "       Получившееся имя для вашего образа CD-диска: "
echo "                         $totalname                      "
echo "---------------------------------------------------------------------"
genisoimage -iso-level 4 -R -o $totalname$exten $waytodir >/dev/null 2>&1
else
genisoimage -iso-level 4 -R -o $nameofcd$exten $waytodir >/dev/null 2>&1
fi
echo "---------------------------------------------------------------------"
echo "         Поздравляю, Ваш образ CD-диска успешно создан!!!"
echo "---------------------------------------------------------------------"
echo "                           Начать с начала?"
echo "              Введите Y,если желаете начать начать с начала"
echo "           Введите N, если хотите завершить работу с программой"
echo "---------------------------------------------------------------------"
read -p "Введите [Y/N]: " continuet
done
echo "---------------------------------------------------------------------"
echo "                           До новых встреч!"
echo "---------------------------------------------------------------------"
exit

#!/bin/bash

for dir in */; do
  cd $dir
  [ -d css ] || exit 1
  cd css
  for file in *.css; do
    echo 'in file: '$file''
    # change the default bg color
    # $(sed -i -e 's/181818/32302F/g' $file)
    # $(sed -i -e 's/32302F/181818/g' $file)
    [ -f ../../gruv_colors.txt ] || exit 1
    gruv_colors=../../gruv_colors.txt
    for color in $(sed -n -e '/#[[:alnum:]]\{3,6\}/p' $file); do
      # don't change bg colors
      if [ $color = '#181818;' ] || [ $color = '#32302F;' ]; then
        continue
      fi
      if  [ ${#color} -eq 8 ] && [ ${color:0:1} = '#' ] && [ ${color:7:8} = ';' ]; then
        rand_color=$(head -$((${RANDOM} % `wc -l < $gruv_colors` + 1)) $gruv_colors | tail -1) || exit 1
        # echo 'COLOR: '$color''
        # echo 'selected random color: '$rand_color''
        sed -i.bak 's/'$color'/'$rand_color';/g' $file &> /dev/null || exit 1
        continue
      fi
      if  [ ${#color} -eq 5 ] && [ ${color:0:1} = '#' ] && [ ${color:4:5} = ';' ]; then
        rand_color=$(head -$((${RANDOM} % `wc -l < $gruv_colors` + 1)) $gruv_colors | tail -1) || exit 1
        # echo 'COLOR: '$color''
        sed -i.bak 's/'$color'/'$rand_color';/g' $file &> /dev/null || exit 1
        continue
      fi
    done
  done
  cd ../..
done

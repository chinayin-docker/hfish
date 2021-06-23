#!/bin/bash

set -eu

allinone_dir='/tmp/services'
packages_dir='/opt/hfish/packages'
os_list='linux-386 linux-arm windows-386'

cd "$allinone_dir"
find "$allinone_dir" -follow -type f -name "*.tar.gz" -print | while read -r mfile; do
  module_file="${mfile#$allinone_dir/}"
  module=$(echo ${module_file} | sed 's/service-//;s/.tar.gz//')
  echo "install module: $module"
  tar zxf $module_file
  cd $module
  for os in ${os_list}; do
    echo $os
    excluded=''
    exe="$module-$os"
    exe2="$module"
    if [ $os = 'linux-386' ]; then
      excluded='linux-arm\|windows-386'
    elif [ $os = 'linux-arm' ]; then
      excluded='linux-386\|windows-386'
    elif [ $os = 'windows-386' ]; then
      excluded='linux-386\|linux-arm'
      exe="$module-$os.exe"
      exe2="$module.exe"
    fi
    target_dir=${packages_dir}/${os}/${module}
    mkdir -p "$target_dir"
    ls . | grep -v $excluded | xargs -i cp -rf ./{} "$target_dir/"
    mv -f "$target_dir/$exe" "$target_dir/$exe2"
    dir=$(dirname "$target_dir")
    cd $dir
    tar -zcf "service-${module}.tar.gz" "$module"
    rm -rf "$target_dir"
    cd -
  done
  cd ..
done
echo 'success.'

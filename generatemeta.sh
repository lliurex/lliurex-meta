#!/bin/bash
germinate-update-metapackage --nodch
#svn st meta* | grep "M" | awk '{ print $2 }' | xargs svn diff | grep -e "^+[^+]" | sed -e "s%^+%%g" | sort -u > /tmp/addpackages
#svn st meta* | grep "M" | awk '{ print $2 }' | xargs svn diff | grep -e "^-[^-]" | sed -e "s%^-%%g" | sort -u > /tmp/removepackages
#packages=$(cat /tmp/addpackages | tr "\n" ",")
#DO=0
#if [ -n "${packages}" ]; then
#    dch -i -U "Add ${packages::-1}"
#    echo "Adding ${packages::-1}"
#    DO=1
#else
#    echo "Not adding any package, dch adding tag ommitted"
#fi
#
#packages=$(cat /tmp/removepackages | tr "\n" ",")
#if [ -n "${packages}" ]; then
#    dch -i -U "Remove ${packages::-1}"
#    echo "Removing ${packages::-1}"
#    DO=1
#else
#    echo "Not removing any package, dch remove tag ommitted"
#fi
#
#if [ "${DO}" != "1" ]; then
#    echo "Warning: NO CHANGES DETECTED"
#else
#    echo "Seed changes applied into meta files"
#    echo "Summary"
#    echo "==========="
##    svn st
#fi

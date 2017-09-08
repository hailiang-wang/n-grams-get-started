#! /bin/bash 
###########################################
#
###########################################

# constants
baseDir=$(cd `dirname "$0"`;pwd)
# functions

# main 
[ -z "${BASH_SOURCE[0]}" -o "${BASH_SOURCE[0]}" = "$0" ] || return
cd $baseDir/..
source tools/env.sh
ngram-count -vocab tmp/corpus/iqa.ngram-vocab \
    -debug 5 \
    -order 3 \
    -read tmp/corpus/iqa.ngram-corpus.count3 \
    -lm tmp/corpus/iqa.ngram-corpus.lm3 \
    -gt1min 3 -gt1max 7 \
    -gt2min 3 -gt2max 7 \
    -gt3min 3 -gt3max 7 \
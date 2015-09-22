#!/bin/bash
cd `dirname $0`/stanford_corenlp_pywrapper

jarfile=lib/corenlpwrapper.jar
rm -rf _build $jarfile
mkdir _build

CORENLP_JAR=/u/yli/workplace/web-apps/gif-caption-CF/3rdparty/stanford-corenlp-full-2015-04-20/stanford-corenlp-3.5.2.jar

javac -d _build -cp "`pwd`/lib/*":$CORENLP_JAR `find javasrc -name '*.java'`
(cd _build && jar cf ../$jarfile .)
ls -l $jarfile
rm -rf _build

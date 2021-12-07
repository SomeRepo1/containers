#!/bin/bash


USER="SomeRepo1"
TOKEN="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"
REPO="containers"
REPOURL="https://${USER}:${TOKEN}@github.com/${USER}/${REPO}.git"
 
TMP="testbox_gitbot"

echo "CLOSE ${REPOURL} -> ${TMP}"
git clone ${REPOURL} ${TMP}
cd ${TMP}
git config user.email alisra.tatakorn@gmail.com
git config user.name AutomatedCommiter

echo "OK"
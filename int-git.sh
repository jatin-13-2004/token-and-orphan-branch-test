#!/bin/bash

CURR_DIR="$(basename $(pwd))"

checkout_branch="$CURR_DIR"

case $1 in
        feature)
                checkout_branch="${checkout_branch}_feature"
            ;;
    develop)
                checkout_branch="${checkout_branch}_develop"
            ;;
    devtest)
                checkout_branch="${checkout_branch}_devtest"
            ;;
    testserver)
                checkout_branch="${checkout_branch}_testserver"
            ;;
    acceptance)
                checkout_branch="${checkout_branch}_acceptance"
            ;;
esac

echo "Do you want to checkout branch $checkout_branch ? (yes/no)"
read checkout_confirm

if [[ $checkout_confirm =~ ^[Yy][Ee][Ss]$ ]]
then
   echo "Execute checkout.."
   git checkout $checkout_branch
else
   echo "Aborting checkout.."
fi

#!/bin/bash
 
 for BASHRC in $(find /home/ -name .bashrc)
 do
     for ALIAS in "alias rm='rm -i'" "alias cp='cp -i'" "alias mv='mv -i'"
     do
         ALIAS_CMD=$(echo $ALIAS | cut -d= -f1)
         if ! egrep -q "^$ALIAS_CMD" $BASHRC
         then
             echo $ALIAS >>$BASHRC
         fi
     done
 done

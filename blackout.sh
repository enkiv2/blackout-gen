#!/usr/bin/env zsh

rate=$1

awk '
{
	out=""
	for (i=1;i<=NR; i++) {
		if(rand()*100 < '"$rate"') {
			temp="";
			for(j=0; j<length($i); j++) {
				temp=temp "#";
			}
		} else {
			temp=$i;
		}
		out=out " " temp;
	}
	print out;
}' | sed 's/# #/###/g'


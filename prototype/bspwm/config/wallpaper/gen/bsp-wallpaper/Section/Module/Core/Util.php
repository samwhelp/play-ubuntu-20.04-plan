
################################################################################
### Head: Core / Util
##

## * https://dragonspring.pixnet.net/blog/post/32935895

function util_random_range()
{

	if [ "$#" -lt "2" ]; then
		echo "Usage: random_range <low> <high>"
		return
	fi
	low=$1
	##range=$(($2 - $1))
	range=$(($2 - $1 + 1))
	## Todo: range=0
	echo $(($low+$RANDOM % $range))
}

##
### Tail: Core / Util
################################################################################

<?php
/*

## Reference


*/
?>

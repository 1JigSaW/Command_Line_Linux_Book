echo "preparing to delete files" >&2
if [[ -d $dir_name ]]; then
	if cd $dir_name; then
echo "deleting files" >&2
		rm *
	else
		echo "cannot cd to '$dir_name'" >&2
		exit 1
	fi
else
	echo "no such directory: '$dir_name'" >&2
	exit 1
fi
echo "file deletion complete" >&2

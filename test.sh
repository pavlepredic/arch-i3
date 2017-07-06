rsync_args='av'

for param in $*; do
    if [ $param = "--dry-run" ] ; then rsync_args="${rsync_args}n"; fi
done

echo $rsync_args

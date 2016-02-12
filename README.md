Defuckup
========

You have all of your deja-dup tar volume stored somewhere and the software refuse to restore files? If nothing else work, this is probably your last resource. As explained here https://wiki.gnome.org/Apps/DejaDup/Help/Restore/WorstCase#Restoring_by_Hand
sometimes the only way is to manually cat the various pieces into the original file. This simple bash script make this operation recursively. 

BEWARE! This operation usually result in a lot of the file recreated to be damaged (songs with black holes and so on), but for documents and small files in general is worth a try, even because the alternative is to have everything lost. At least you had a chicken :-)

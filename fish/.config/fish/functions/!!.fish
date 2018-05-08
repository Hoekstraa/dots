function !!
	for i in $history
        if [ "$i" != "!!" ]
            eval $i; break;
        end
    end
end

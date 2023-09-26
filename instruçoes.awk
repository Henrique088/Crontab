BEGIN{ print "\n"; print "Eventos cadastrados"; print "___________________";} /^[0]/ {OFS="\t"; print "Nome do evento: " $6,$7,$8,$9; print "Data evento: " $3"diaM",$4"mes",$5"diaS"; print "Hora evento: " $1 " min",$2 " hours"} END { print "__________________";}



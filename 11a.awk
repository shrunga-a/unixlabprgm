BEGIN {
	print "Book Details"
	print "\nSLNO\tDEPARTMENT\t\tTOTALBOOKS\n"
}
{
book[$1]+=$2
total+=$2
}
END {
	for(i in book) {
		SN++
		printf("%d\t%-20s\t%d\n",SN,i,book[i])
	}
	print "\n=========================================\n"
	printf("Total books: %d\n",total)
}

BEGIN { print "\{ \"jglassCisBenchmarks\": [";}
{
	print "\{ \"PutRequest\": \{ \"Item\": \{ \"cisbenchi\": \{ \"S\": \""$2"-"$4"-section-"$5"\"\}, \"product\": \{ \"S\": \""$2"\"\}, \"version\": \{ \"S\": \""$4,"\"\}, \"section\": \{\"S\": \""$5"\"\}, \"benchmark\": \{\"S\": \""$6"\"\}\}\}\},";
while (getline == 1) { 
	print "\{ \"PutRequest\": \{ \"Item\": \{ \"cisbenchi\": \{ \"S\": \""$2"-"$4"-section-"$5"\"\}, \"product\": \{ \"S\": \""$2"\"\}, \"version\": \{ \"S\": \""$4,"\"\}, \"section\": \{\"S\": \""$5"\"\}, \"benchmark\": \{\"S\": \""$6"\"\}\}\}\},";

}
	print "\{ \"PutRequest\": \{ \"Item\": \{ \"cisbenchi\": \{ \"S\": \""$2"-"$4"-section-"$5"\"\}, \"product\": \{ \"S\": \""$2"\"\}, \"version\": \{ \"S\": \""$4,"\"\}, \"section\": \{\"S\": \""$5"\"\}, \"benchmark\": \{\"S\": \""$6"\"\}\}\}\}]\}";
 
}
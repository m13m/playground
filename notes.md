event based concurrency 


fundamental idea:

event loop: 

while(1) {
	events = getEvents();
 	for (e in events) 
		process(e)
}

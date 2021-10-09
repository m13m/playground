function linkedlistcycle() {
  var list = [1, 2, 3, 4, 5];
  var cycle = list.slice(0);
  var i = 0;
  while (i < cycle.length) {
    cycle[i] = cycle[i] + 1;
    i++;
  }
  return cycle;
}
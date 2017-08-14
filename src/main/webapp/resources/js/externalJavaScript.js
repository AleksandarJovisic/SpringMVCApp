function myFunction() {

	var select = document.getElementById("InterestRateList");
	var answer = select.options[select.selectedIndex].value;
	var select2 = document.getElementById("AmmountList");
	var answer2 = select2.options[select2.selectedIndex].value;
	var select3 = document.getElementById("MonthsList");
	var answer3 = select3.options[select3.selectedIndex].value;
	var IznosKamata = answer * answer2;
	var iznosKredita = Number(IznosKamata) + Number(answer2);
	var mesecnaRata = iznosKredita / answer3;

	document.getElementById("p1").innerHTML = "	Izabrana suma kredita je: "
			+ answer2 + " EUR" + "<br>" + "<br>"
			+ "	Izabrana kamatna stopa je: " + answer * 100 + "%" + "<br>"
			+ "<br>" + "	Izabrani broj mesecnih rata je: " + answer3 + "<br>"
			+ "<br>" + "	Iznos vase kamatne  je: " + IznosKamata + " EUR"
			+ "<br>" + "<br>" + "	Iznos vaseg kredita je: " + iznosKredita
			+ " EUR" + "<br>" + "<br>" + "	Vasa mesecna rata iznosi: "
			+ mesecnaRata + " EUR";

}







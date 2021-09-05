state("DOSBox")
{
	byte HealthLower : "dosbox.exe", 0x194A380, 0x19fdc;
	byte HealthUpper : "dosbox.exe", 0x194A380, 0x19FDD;
	byte Honesty : "dosbox.exe", 0x194A380, 0x1A11A;
	byte Location : "dosbox.exe", 0x194A380, 0x19E28;
	byte DngLevel : "dosbox.exe", 0x194A380, 0x197DC;
}

init
{
	int split;
	vars.split = 0;
}

start
{
//	if (current.HealthLower < 200)
//	{
//		vars.split = 0;
//		return true;
//	}
	vars.split = 0;
	return false;
}

split
{
	//print("current HealthLower is " + current.HealthLower);
	//print("current HealthUpper is " + current.HealthUpper);
	//print("current Honesty is " + current.Honesty);
	print("current Location is " + current.Location);
	print("current DngLevel is " + current.DngLevel);
	
	if (vars.split == 0 && current.Location == 24 && current.DngLevel == 0)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 1 && current.Location == 24 && current.DngLevel == 1)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 2 && current.Location == 24 && current.DngLevel == 2)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 3 && current.Location == 24 && current.DngLevel == 3)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 4 && current.Location == 24 && current.DngLevel == 4)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 5 && current.Location == 24 && current.DngLevel == 5)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 6 && current.Location == 24 && current.DngLevel == 6)
	{
		vars.split++;
		return true;
	}
	
	if (vars.split == 7 && current.Location == 24 && current.DngLevel == 7)
	{
		vars.split++;
		return true;
	}
}

reset
{
//F44D2
}

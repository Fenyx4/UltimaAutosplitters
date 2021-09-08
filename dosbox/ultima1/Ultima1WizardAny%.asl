state("DOSBox")
{
    short playerHP : "dosbox.exe",0x35B6D8,0x1297E;
    short cubeQuest : "dosbox.exe",0x35B6D8,0x129A6;
    short pistol : "dosbox.exe",0x35B6D8,0x129E0;
    short phazor : "dosbox.exe",0x35B6D8,0x129E4;
    short blaster : "dosbox.exe",0x35B6D8,0x129E6;
    short balronQuest : "dosbox.exe",0x35B6D8,0x129B2;
    short lichQuest : "dosbox.exe",0x35B6D8,0x129AE;
    short ladderUp : "dosbox.exe",0x35B6D8,0x129F4;
    short create : "dosbox.exe",0x35B6D8,0x129F8;
    short ladderDown : "dosbox.exe",0x35B6D8,0x129F2;
    short creeperQuest : "dosbox.exe",0x35B6D8,0x129AA;
    short greenGem : "dosbox.exe",0x35B6D8,0x129B6;
    short blueGem : "dosbox.exe",0x35B6D8,0x129B8;
    short whiteGem : "dosbox.exe",0x35B6D8,0x129BA;
    short redGem : "dosbox.exe",0x35B6D8,0x129B4;
    short shuttle : "dosbox.exe",0x35B6D8,0x12A0A;
    short alienKills : "dosbox.exe",0x35B6D8,0x12A0E;
    short mondainHP : "dosbox.exe",0x35B6D8,0x750E;
    short princessX : "dosbox.exe",0x35B6D8,0x19BC0;
    short overworld : "dosbox.exe",0x35B6D8,0x17A8C;
}

startup
{
    vars.split = 0;
    vars.rescued = false;

    foreach (dynamic component in timer.Layout.Components) 
    {
        if (component.GetType().Name != "TextComponent") 
            continue;

        component.Settings.Text2 = "0";
    }
}

update
{
    if (vars.rescued == true && current.princessX != 1)
    {
        vars.rescued = false;
    }

    foreach (dynamic component in timer.Layout.Components) 
    {
        if (component.GetType().Name != "TextComponent") 
            continue;
            
        if (current.princessX == 1 && current.overworld == 0 && vars.rescued == false) 
        {
            component.Settings.Text2 = (Int16.Parse(component.Settings.Text2) + 1).ToString();
            vars.rescued = true;
        }
    }
}

start
{
    if (current.playerHP == 150 && vars.split == 0)
    {
        vars.split++;
	    return true;
    }
}

init
{
	int split;
    bool rescued;
    vars.rescued = false;
	vars.split = 0;

    foreach (dynamic component in timer.Layout.Components) 
    {
        if (component.GetType().Name != "TextComponent") 
            continue;

        component.Settings.Text2 = "0";
    }
}

split
{
    print("Mondain's hp is: " + vars.split);

    if (current.cubeQuest == -1 && vars.split == 1)
    {
		vars.split++;
        return true;
    }

    if ((current.pistol >= 1 || current.phazor >= 1 || current.blaster >= 1) && vars.split == 2)
    {
		vars.split++;
        return true;
    }

    if (current.balronQuest == -1 && vars.split == 3)
    {
		vars.split++;
        return true;
    }

    if (current.lichQuest == -1 && vars.split == 4)
    {
		vars.split++;
        return true;
    }

    // change spell amounts here
    if (current.ladderUp >= 5 && current.create >= 6 && current.ladderDown >= 4 && vars.split == 5)
    {
		vars.split++;
        return true;
    }

    if (current.creeperQuest == -1 && vars.split == 6)
    {
		vars.split++;
        return true;
    }

    if (current.creeperQuest == 1 && current.lichQuest == 1 && current.balronQuest == 1 && current.cubeQuest == 1 && vars.split == 7)
    {
		vars.split++;
        return true;
    }

    if (current.greenGem >= 1 && vars.split == 8)
    {
		vars.split++;
        return true;
    }

    if (current.blueGem >= 1 && vars.split == 9)
    {
		vars.split++;
        return true;
    }

    if (current.whiteGem >= 1 && vars.split == 10)
    {
		vars.split++;
        return true;
    }

    if (current.shuttle >= 1 && vars.split == 11)
    {
		vars.split++;
        return true;
    }

    if (current.alienKills >= 20 && vars.split == 12)
    {
		vars.split++;
        return true;
    }

    if (current.redGem >= 1 && vars.split == 13)
    {
		vars.split++;
        return true;
    }

    if (current.mondainHP == 1000 && vars.split == 14)
    {
		vars.split++;
        return true;
    }

    if (current.mondainHP <= 0 && vars.split == 15) 
    {
		vars.split++;
        return true;
    }
}
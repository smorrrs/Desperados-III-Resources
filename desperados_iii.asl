state("Desperados III")
{
    bool loading : "UnityPlayer.dll", 0x01530790, 0x60, 0x10, 0x98, 0x18, 0x668, 0x90, 0x138;
    bool dc3Complete : "UnityPlayer.dll", 0x01561A68, 0xFE0, 0X188, 0X80, 0X0, 0XA8, 0X9D0;
    string32 level : "UnityPlayer.dll", 0x01529248, 0x1C;
}

init
{
    vars.previousLevel = "none";

    // Level names
    vars.FLASHBACK1 = "flashback1";
    vars.TRAIN = "train";
    vars.TOWN = "town";
    vars.WEDDING = "wedding";
    vars.RANCH = "ranch";
    vars.BRIDGE = "bridge";
    vars.FLASHBACK2 = "flashback2";
    vars.HARBOR = "harbor";
    vars.RIVER = "river";
    vars.CITY1 = "city1";
    vars.SWAMP = "swamp";
    vars.CITY2 = "city2";
    vars.MINE = "mine";
    vars.PUEBLO = "pueblo";
    vars.HACIENDA = "hacienda";
    vars.SHOWDOWN = "showdown";

    // Level sequence
    vars.previousLevelMap = new Dictionary<string,string>();
    vars.previousLevelMap.Add(vars.TRAIN, vars.FLASHBACK1);
    vars.previousLevelMap.Add(vars.TOWN, vars.TRAIN);
    vars.previousLevelMap.Add(vars.WEDDING, vars.TOWN);
    vars.previousLevelMap.Add(vars.RANCH, vars.WEDDING);
    vars.previousLevelMap.Add(vars.BRIDGE, vars.RANCH);
    vars.previousLevelMap.Add(vars.FLASHBACK2, vars.BRIDGE);
    vars.previousLevelMap.Add(vars.HARBOR, vars.FLASHBACK2);
    vars.previousLevelMap.Add(vars.RIVER, vars.HARBOR);
    vars.previousLevelMap.Add(vars.CITY1, vars.RIVER);
    vars.previousLevelMap.Add(vars.SWAMP, vars.CITY1);
    vars.previousLevelMap.Add(vars.CITY2, vars.SWAMP);
    vars.previousLevelMap.Add(vars.MINE, vars.CITY2);
    vars.previousLevelMap.Add(vars.PUEBLO, vars.MINE);
    vars.previousLevelMap.Add(vars.HACIENDA, vars.PUEBLO);
    vars.previousLevelMap.Add(vars.SHOWDOWN, vars.HACIENDA);
}

start
{
    // If the level value has changed
    if (current.level != old.level){
        
        // Parse level name
        string levelString = current.level;
        if (levelString.Length > 0) {
            string[] tokens = levelString.Split('_');
            if (tokens.Length > 0) {

                // Start timer if beginning level 1
                if (tokens[1] == vars.FLASHBACK1){
                    vars.previousLevel = vars.FLASHBACK1;
                    return true;
                }
            }
        }
    }
}

split{
    // If the level value has changed
    if (current.level != old.level){
        
        // Parse level name
        string levelString = current.level;
        if (levelString.Length > 0) {
            string[] tokens = levelString.Split('_');
            if (tokens.Length > 0) {

            // Split if the new level is next in the sequence
            string newLevel = tokens[1];
            if (vars.previousLevelMap.ContainsKey(newLevel)){
                if (vars.previousLevelMap[newLevel] == vars.previousLevel) {
                    vars.previousLevel = newLevel;
                    return true;
                }
            }
        }
        }

    // End the timer when entering the final cutscene
    } else if ((vars.previousLevel == vars.SHOWDOWN) & current.dc3Complete) {
        return true;
    }
}

isLoading
{
    return current.loading;
}

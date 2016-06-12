
package com.clilystudio.netbook.model;

public final class ModuleType extends Enum {

    private ModuleType(String String1, int int2, String String3)
    {
        super( String1, int2 );
        name = String3;
    }

    private static ModuleType[] $VALUES;     // final access specifier removed
    private String name;     // final access specifier removed
    public static final ModuleType GAME_GROUP = new ModuleType( "GAME_GROUP", 0, "gameGroup" );
    public static final ModuleType ACTIVITY = new ModuleType( "ACTIVITY", 1, "activity" );
    public static final ModuleType UNKNOWN = new ModuleType( "UNKNOWN", 2, "" );
    public static final ModuleType AOYOU = new ModuleType( "AOYOU", 3, "aoyou" );
    public static final ModuleType LOCAL = new ModuleType( "LOCAL", 4, "local" );
// Error: Internal #201: 
// The following method may not be correct.

    public static ModuleType valueOf(String String1)
    {
    }

    public static ModuleType[] values()
    {
        return (ModuleType[]) $VALUES.clone();
    }

    public final String getName()
    {
        return name;
    }

    static 
    {
        ModuleType[] ModuleType_1darray1 = new ModuleType[5];

        ModuleType_1darray1[0] = GAME_GROUP;
        ModuleType_1darray1[1] = ACTIVITY;
        ModuleType_1darray1[2] = UNKNOWN;
        ModuleType_1darray1[3] = AOYOU;
        ModuleType_1darray1[4] = LOCAL;
        $VALUES = ModuleType_1darray1;
    }
}

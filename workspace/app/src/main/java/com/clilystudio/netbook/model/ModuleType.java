package com.clilystudio.netbook.model;

public final class ModuleType
        extends Enum<ModuleType> {
    public static final /* enum */ ModuleType ACTIVITY;
    public static final /* enum */ ModuleType AOYOU;
    public static final /* enum */ ModuleType GAME_GROUP;
    public static final /* enum */ ModuleType LOCAL;
    public static final /* enum */ ModuleType UNKNOWN;
    private static final /* synthetic */ ModuleType[] $VALUES;

    static {
        GAME_GROUP = new ModuleType("gameGroup");
        ACTIVITY = new ModuleType("activity");
        UNKNOWN = new ModuleType("");
        AOYOU = new ModuleType("aoyou");
        LOCAL = new ModuleType("local");
        ModuleType[] arrmoduleType = new ModuleType[]{GAME_GROUP, ACTIVITY, UNKNOWN, AOYOU, LOCAL};
        $VALUES = arrmoduleType;
    }

    private final String name;

    private ModuleType(String string2) {
        super(string, n);
        this.name = string2;
    }

    public static ModuleType valueOf(String string) {
        return (ModuleType) ((Object) Enum.valueOf(ModuleType.class, string));
    }

    public static ModuleType[] values() {
        return (ModuleType[]) $VALUES.clone();
    }

    public final String getName() {
        return this.name;
    }
}

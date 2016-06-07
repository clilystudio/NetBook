package com.clilystudio.netbook.model;

public enum ModuleType
{
  private final String name;

  static
  {
    ACTIVITY = new ModuleType("ACTIVITY", 1, "activity");
    UNKNOWN = new ModuleType("UNKNOWN", 2, "");
    AOYOU = new ModuleType("AOYOU", 3, "aoyou");
    LOCAL = new ModuleType("LOCAL", 4, "local");
    ModuleType[] arrayOfModuleType = new ModuleType[5];
    arrayOfModuleType[0] = GAME_GROUP;
    arrayOfModuleType[1] = ACTIVITY;
    arrayOfModuleType[2] = UNKNOWN;
    arrayOfModuleType[3] = AOYOU;
    arrayOfModuleType[4] = LOCAL;
    $VALUES = arrayOfModuleType;
  }

  private ModuleType(String paramString)
  {
    this.name = paramString;
  }

  public final String getName()
  {
    return this.name;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.model.ModuleType
 * JD-Core Version:    0.6.0
 */
package com.iflytek.cloud;

public enum Setting$LOG_LEVEL
{
  static
  {
    low = new LOG_LEVEL("low", 3);
    none = new LOG_LEVEL("none", 4);
    LOG_LEVEL[] arrayOfLOG_LEVEL = new LOG_LEVEL[5];
    arrayOfLOG_LEVEL[0] = all;
    arrayOfLOG_LEVEL[1] = detail;
    arrayOfLOG_LEVEL[2] = normal;
    arrayOfLOG_LEVEL[3] = low;
    arrayOfLOG_LEVEL[4] = none;
    a = arrayOfLOG_LEVEL;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.iflytek.cloud.Setting.LOG_LEVEL
 * JD-Core Version:    0.6.0
 */
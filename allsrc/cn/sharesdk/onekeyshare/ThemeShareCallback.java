package cn.sharesdk.onekeyshare;

import cn.sharesdk.framework.Platform;
import java.util.HashMap;

public abstract interface ThemeShareCallback
{
  public abstract void doShare(HashMap<Platform, HashMap<String, Object>> paramHashMap);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.onekeyshare.ThemeShareCallback
 * JD-Core Version:    0.6.0
 */
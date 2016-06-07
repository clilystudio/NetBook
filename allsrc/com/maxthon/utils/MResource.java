package com.maxthon.utils;

import android.content.Context;
import android.content.res.Resources;

public class MResource
{
  public static int getIdByName(Context paramContext, String paramString1, String paramString2)
  {
    return paramContext.getResources().getIdentifier(paramString2, paramString1, paramContext.getPackageName());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.maxthon.utils.MResource
 * JD-Core Version:    0.6.0
 */
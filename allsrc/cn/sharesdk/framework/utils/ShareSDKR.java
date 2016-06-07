package cn.sharesdk.framework.utils;

import android.content.Context;
import android.content.res.Resources;
import android.text.TextUtils;
import java.io.PrintStream;

public class ShareSDKR
{
  public static int getAnimRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "anim", paramString);
  }

  public static int getBitmapRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "drawable", paramString);
  }

  public static int getColorRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "color", paramString);
  }

  public static int getIdRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "id", paramString);
  }

  public static int getLayoutRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "layout", paramString);
  }

  public static int getPluralsRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "plurals", paramString);
  }

  public static int getRawRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "raw", paramString);
  }

  public static int getResId(Context paramContext, String paramString1, String paramString2)
  {
    int i = 0;
    if (paramContext != null)
    {
      boolean bool1 = TextUtils.isEmpty(paramString1);
      i = 0;
      if (!bool1)
      {
        boolean bool2 = TextUtils.isEmpty(paramString2);
        i = 0;
        if (!bool2)
          break label34;
      }
    }
    label34: 
    do
    {
      String str;
      boolean bool3;
      do
      {
        return i;
        str = paramContext.getPackageName();
        bool3 = TextUtils.isEmpty(str);
        i = 0;
      }
      while (bool3);
      i = paramContext.getResources().getIdentifier(paramString2, paramString1, str);
      if (i <= 0)
        i = paramContext.getResources().getIdentifier(paramString2.toLowerCase(), paramString1, str);
      if (i <= 0)
      {
        i = paramContext.getResources().getIdentifier("ssdk_" + paramString2, paramString1, str);
        if (i <= 0)
          i = paramContext.getResources().getIdentifier("ssdk_" + paramString2.toLowerCase(), paramString1, str);
      }
      if (i > 0)
        continue;
      i = paramContext.getResources().getIdentifier("ssdk_oks_" + paramString2, paramString1, str);
      if (i > 0)
        continue;
      i = paramContext.getResources().getIdentifier("ssdk_oks_" + paramString2.toLowerCase(), paramString1, str);
    }
    while (i > 0);
    System.err.println("failed to parse " + paramString1 + " resource \"" + paramString2 + "\"");
    return i;
  }

  public static int getStringArrayRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "array", paramString);
  }

  public static int getStringRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "string", paramString);
  }

  public static int getStyleRes(Context paramContext, String paramString)
  {
    return getResId(paramContext, "style", paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.utils.ShareSDKR
 * JD-Core Version:    0.6.0
 */
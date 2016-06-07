package android.support.v4.text;

import android.os.Build.VERSION;

public class ICUCompat
{
  private static final ICUCompat.ICUCompatImpl IMPL;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      IMPL = new ICUCompat.ICUCompatImplIcs();
      return;
    }
    IMPL = new ICUCompat.ICUCompatImplBase();
  }

  public static String addLikelySubtags(String paramString)
  {
    return IMPL.addLikelySubtags(paramString);
  }

  public static String getScript(String paramString)
  {
    return IMPL.getScript(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.text.ICUCompat
 * JD-Core Version:    0.6.0
 */
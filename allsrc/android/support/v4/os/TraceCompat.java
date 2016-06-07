package android.support.v4.os;

import android.os.Build.VERSION;

public class TraceCompat
{
  public static void beginSection(String paramString)
  {
    if (Build.VERSION.SDK_INT >= 18)
      TraceJellybeanMR2.beginSection(paramString);
  }

  public static void endSection()
  {
    if (Build.VERSION.SDK_INT >= 18)
      TraceJellybeanMR2.endSection();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.os.TraceCompat
 * JD-Core Version:    0.6.0
 */
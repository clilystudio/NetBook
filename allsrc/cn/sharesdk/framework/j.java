package cn.sharesdk.framework;

import java.util.Comparator;

class j
  implements Comparator<Platform>
{
  j(i parami)
  {
  }

  public int a(Platform paramPlatform1, Platform paramPlatform2)
  {
    if (paramPlatform1.getSortId() != paramPlatform2.getSortId())
      return paramPlatform1.getSortId() - paramPlatform2.getSortId();
    return paramPlatform1.getPlatformId() - paramPlatform2.getPlatformId();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     cn.sharesdk.framework.j
 * JD-Core Version:    0.6.0
 */
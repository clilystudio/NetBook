package com.ushaqi.zhuishushenqi.util;

import com.ushaqi.zhuishushenqi.model.ReaderChapterIdentifier;
import com.ushaqi.zhuishushenqi.reader.ReaderChapter;
import java.util.HashMap;
import java.util.Map;

public final class Q
{
  private static HashMap<ReaderChapterIdentifier, Map<Integer, ReaderChapter>> a = new HashMap();

  public static ReaderChapter a(String paramString1, String paramString2, int paramInt)
  {
    ReaderChapterIdentifier localReaderChapterIdentifier = new ReaderChapterIdentifier(paramString1, paramString2);
    Map localMap = (Map)a.get(localReaderChapterIdentifier);
    if (localMap == null)
      return null;
    return (ReaderChapter)localMap.get(Integer.valueOf(paramInt));
  }

  public static Q a()
  {
    return new Q();
  }

  public static void a(String paramString1, String paramString2, Map<Integer, ReaderChapter> paramMap)
  {
    ReaderChapterIdentifier localReaderChapterIdentifier = new ReaderChapterIdentifier(paramString1, paramString2);
    if (a.get(localReaderChapterIdentifier) != null)
      return;
    a.put(localReaderChapterIdentifier, new HashMap(paramMap));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.Q
 * JD-Core Version:    0.6.0
 */
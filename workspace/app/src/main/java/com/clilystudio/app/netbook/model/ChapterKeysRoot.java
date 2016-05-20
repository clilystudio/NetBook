package com.clilystudio.app.netbook.model;

import java.io.Serializable;

public class ChapterKeysRoot
  implements Serializable
{
  private ChapterKeysRoot.ChapterKey[] keys;
  private boolean ok;

  public String getKey(String paramString)
  {
    if ((this.keys == null) || (this.keys.length == 0));
    while (true)
    {
      return null;
      for (ChapterKeysRoot.ChapterKey localChapterKey : this.keys)
        if (localChapterKey.get_id().equals(paramString))
          return localChapterKey.getKey();
    }
  }

  public int getKeyLength()
  {
    if (this.keys == null)
      return 0;
    return this.keys.length;
  }

  public ChapterKeysRoot.ChapterKey[] getKeys()
  {
    return this.keys;
  }

  public boolean isOk()
  {
    return this.ok;
  }

  public void setKeys(ChapterKeysRoot.ChapterKey[] paramArrayOfChapterKey)
  {
    this.keys = paramArrayOfChapterKey;
  }

  public void setOk(boolean paramBoolean)
  {
    this.ok = paramBoolean;
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.ChapterKeysRoot
 * JD-Core Version:    0.6.2
 */
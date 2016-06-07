package com.ushaqi.zhuishushenqi.model.mixtoc;

import com.ushaqi.zhuishushenqi.model.ChapterLink;
import java.io.Serializable;
import java.util.List;

public class LocalTxtToc
  implements Serializable
{
  private List<ChapterLink> mChapterLinks;
  private long txtFileLength;

  public LocalTxtToc()
  {
  }

  public LocalTxtToc(long paramLong, List<ChapterLink> paramList)
  {
    this.txtFileLength = paramLong;
    this.mChapterLinks = paramList;
  }

  public List<ChapterLink> getChapterLinks()
  {
    return this.mChapterLinks;
  }

  public long getTxtFileLength()
  {
    return this.txtFileLength;
  }

  public void setChapterLinks(List<ChapterLink> paramList)
  {
    this.mChapterLinks = paramList;
  }

  public void setTxtFileLength(long paramLong)
  {
    this.txtFileLength = paramLong;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.model.mixtoc.LocalTxtToc
 * JD-Core Version:    0.6.0
 */
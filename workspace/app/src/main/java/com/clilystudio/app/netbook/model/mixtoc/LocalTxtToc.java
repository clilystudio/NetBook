package com.clilystudio.app.netbook.model.mixtoc;

import com.clilystudio.app.netbook.model.ChapterLink;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.model.mixtoc.LocalTxtToc
 * JD-Core Version:    0.6.2
 */
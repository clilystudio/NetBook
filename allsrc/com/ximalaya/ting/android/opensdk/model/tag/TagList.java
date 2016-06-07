package com.ximalaya.ting.android.opensdk.model.tag;

import com.ximalaya.ting.android.opensdk.datatrasfer.XimalayaResponse;
import java.util.List;

public class TagList extends XimalayaResponse
{
  private List<Tag> tagList;

  public List<Tag> getTagList()
  {
    return this.tagList;
  }

  public void setTagList(List<Tag> paramList)
  {
    this.tagList = paramList;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ximalaya.ting.android.opensdk.model.tag.TagList
 * JD-Core Version:    0.6.0
 */
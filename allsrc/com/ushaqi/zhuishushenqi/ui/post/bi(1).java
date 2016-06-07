package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.DiscussSummary;
import com.ushaqi.zhuishushenqi.model.DiscussSummaryList;

final class bi extends e<String, Void, DiscussSummary[]>
{
  private bi(CommonPostListActivity paramCommonPostListActivity)
  {
  }

  private DiscussSummary[] a(String[] paramArrayOfString)
  {
    try
    {
      DiscussSummaryList localDiscussSummaryList = b.b().a(paramArrayOfString[0], paramArrayOfString[1], 0, 20, CommonPostListActivity.n(this.a), CommonPostListActivity.o(this.a));
      if (localDiscussSummaryList != null)
      {
        DiscussSummary[] arrayOfDiscussSummary = localDiscussSummaryList.getPosts();
        return arrayOfDiscussSummary;
      }
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bi
 * JD-Core Version:    0.6.0
 */
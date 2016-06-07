package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.GirlTopicList;
import java.util.List;

final class bI extends e<String, Void, GirlTopicList>
{
  private bI(GirlTopicListActivity paramGirlTopicListActivity)
  {
  }

  private GirlTopicList a(String[] paramArrayOfString)
  {
    if (!isCancelled())
      try
      {
        GirlTopicList localGirlTopicList = b.b().b(paramArrayOfString[0], paramArrayOfString[1], GirlTopicListActivity.j(this.a).size(), 20, GirlTopicListActivity.n(this.a));
        return localGirlTopicList;
      }
      catch (Exception localException)
      {
        localException.printStackTrace();
      }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.bI
 * JD-Core Version:    0.6.0
 */
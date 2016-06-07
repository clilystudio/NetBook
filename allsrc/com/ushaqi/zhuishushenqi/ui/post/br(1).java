package com.ushaqi.zhuishushenqi.ui.post;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.GirlTopicResult;

final class br extends e<String, Void, GirlTopicResult>
{
  private br(GirlTopicActivity paramGirlTopicActivity)
  {
  }

  private GirlTopicResult a(String[] paramArrayOfString)
  {
    try
    {
      GirlTopicResult localGirlTopicResult = b.b().F(paramArrayOfString[0]);
      return localGirlTopicResult;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.br
 * JD-Core Version:    0.6.0
 */
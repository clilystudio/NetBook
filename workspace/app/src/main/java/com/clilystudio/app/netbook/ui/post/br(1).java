package com.clilystudio.app.netbook.ui.post;

import com.clilystudio.app.netbook.a.e;
import com.clilystudio.app.netbook.api.ApiService;
import com.clilystudio.app.netbook.api.b;
import com.clilystudio.app.netbook.model.GirlTopicResult;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.br
 * JD-Core Version:    0.6.2
 */
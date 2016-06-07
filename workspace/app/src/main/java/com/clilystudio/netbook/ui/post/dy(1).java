package com.clilystudio.netbook.ui.post;

import com.clilystudio.netbook.a.e;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.api.b;
import com.clilystudio.netbook.model.PostDetailComment;

final class dy extends e<String, Void, PostDetailComment>
{
  private dy(TweetDetailActivity paramTweetDetailActivity)
  {
  }

  private PostDetailComment a(String[] paramArrayOfString)
  {
    try
    {
      if (paramArrayOfString.length > 1)
        return b.b().l(paramArrayOfString[0], paramArrayOfString[1]);
      PostDetailComment localPostDetailComment = b.b().l(paramArrayOfString[0], null);
      return localPostDetailComment;
    }
    catch (Exception localException)
    {
      localException.printStackTrace();
    }
    return null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.post.dy
 * JD-Core Version:    0.6.0
 */
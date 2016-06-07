package com.ushaqi.zhuishushenqi.ui.post;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.a.c;
import com.ushaqi.zhuishushenqi.api.ApiService;
import com.ushaqi.zhuishushenqi.api.b;
import com.ushaqi.zhuishushenqi.model.CommentDetail;
import java.io.IOException;

public abstract class f extends c<String, CommentDetail>
{
  public f(Activity paramActivity)
  {
    super(paramActivity, 2131034218);
  }

  private static CommentDetail a(String[] paramArrayOfString)
  {
    String str1 = paramArrayOfString[0];
    String str2 = paramArrayOfString[1];
    CommentDetail localCommentDetail1 = new CommentDetail();
    try
    {
      b.a();
      CommentDetail localCommentDetail2 = b.b().A(str1, str2);
      return localCommentDetail2;
    }
    catch (IOException localIOException)
    {
      localIOException.printStackTrace();
    }
    return localCommentDetail1;
  }

  public abstract void a(CommentDetail paramCommentDetail);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.f
 * JD-Core Version:    0.6.0
 */
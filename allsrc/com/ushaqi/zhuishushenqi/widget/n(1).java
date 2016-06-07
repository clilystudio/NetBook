package com.ushaqi.zhuishushenqi.widget;

import com.ushaqi.zhuishushenqi.a.e;
import com.ushaqi.zhuishushenqi.model.PostComment;
import com.ushaqi.zhuishushenqi.model.ResultStatus;

final class n extends e<String, Void, ResultStatus>
{
  private n(CommentItemView paramCommentItemView)
  {
  }

  protected final void onPreExecute()
  {
    super.onPreExecute();
    if (CommentItemView.b(this.a) != null)
      CommentItemView.b(this.a).setLikedInView(true);
    CommentItemView.c(this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.n
 * JD-Core Version:    0.6.0
 */
package com.clilystudio.netbook.widget;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.ResultStatus;

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
 * Qualified Name:     com.clilystudio.netbook.widget.n
 * JD-Core Version:    0.6.0
 */
package com.ushaqi.zhuishushenqi.widget;

import android.app.Activity;
import com.ushaqi.zhuishushenqi.model.CommentDetail;
import com.ushaqi.zhuishushenqi.ui.post.f;
import com.ushaqi.zhuishushenqi.util.e;

final class o extends f
{
  public o(CommentItemView paramCommentItemView, Activity paramActivity)
  {
    super(paramActivity);
  }

  public final void a(CommentDetail paramCommentDetail)
  {
    if ((paramCommentDetail != null) && (paramCommentDetail.getComment() != null))
    {
      CommentItemView.a(this.a, paramCommentDetail.getComment());
      return;
    }
    e.a((Activity)this.a.getContext(), "楼层不存在");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.o
 * JD-Core Version:    0.6.0
 */
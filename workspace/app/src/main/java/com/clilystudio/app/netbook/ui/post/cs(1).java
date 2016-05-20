package com.clilystudio.app.netbook.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Account;
import com.clilystudio.app.netbook.model.Post;

final class cs
  implements View.OnClickListener
{
  cs(PostDetailActivity paramPostDetailActivity)
  {
  }

  public final void onClick(View paramView)
  {
    PostDetailActivity.a(this.a, ((Integer)paramView.getTag()).intValue());
    if (PostDetailActivity.k(this.a))
    {
      cx localcx = new cx(this.a, this.a, 2131034584);
      String[] arrayOfString = new String[3];
      arrayOfString[0] = PostDetailActivity.a(this.a).get_id();
      arrayOfString[1] = PostDetailActivity.i(this.a).getToken();
      arrayOfString[2] = String.valueOf(PostDetailActivity.h(this.a));
      localcx.b(arrayOfString);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.cs
 * JD-Core Version:    0.6.2
 */
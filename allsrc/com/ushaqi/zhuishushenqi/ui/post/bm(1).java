package com.ushaqi.zhuishushenqi.ui.post;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Account;
import com.ushaqi.zhuishushenqi.model.GirlTopic;

final class bm
  implements View.OnClickListener
{
  bm(GirlTopicActivity paramGirlTopicActivity)
  {
  }

  public final void onClick(View paramView)
  {
    GirlTopicActivity.a(this.a, ((Integer)paramView.getTag()).intValue());
    if (GirlTopicActivity.h(this.a))
    {
      bs localbs = new bs(this.a, this.a, 2131034584);
      String[] arrayOfString = new String[3];
      arrayOfString[0] = GirlTopicActivity.a(this.a).get_id();
      arrayOfString[1] = GirlTopicActivity.i(this.a).getToken();
      arrayOfString[2] = String.valueOf(GirlTopicActivity.j(this.a));
      localbs.b(arrayOfString);
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.post.bm
 * JD-Core Version:    0.6.0
 */
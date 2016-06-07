package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.Tweet;
import uk.me.lewisdeane.ldialogs.h;

final class N
  implements View.OnClickListener
{
  N(G paramG, R paramR, Tweet paramTweet)
  {
  }

  public final void onClick(View paramView)
  {
    h localh = new h(this.a.q.getContext()).a(true);
    localh.e = "确定删除动态？";
    localh.b("取消", new P(this)).a("确定", new O(this)).b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.N
 * JD-Core Version:    0.6.0
 */
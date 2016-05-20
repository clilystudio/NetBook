package com.clilystudio.app.netbook.adapter;

import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.model.Tweet;
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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.adapter.N
 * JD-Core Version:    0.6.2
 */
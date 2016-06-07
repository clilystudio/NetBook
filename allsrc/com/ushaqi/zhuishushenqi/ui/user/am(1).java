package com.ushaqi.zhuishushenqi.ui.user;

import android.view.View;
import android.view.View.OnClickListener;
import com.ushaqi.zhuishushenqi.model.VipPlan.Plan;
import java.util.List;
import uk.me.lewisdeane.ldialogs.h;

final class am
  implements View.OnClickListener
{
  am(al paramal, int paramInt)
  {
  }

  public final void onClick(View paramView)
  {
    if (android.support.design.widget.am.a(this.b.a) != null)
    {
      h localh = new h(this.b.a);
      localh.e = ("确定购买 " + ((VipPlan.Plan)al.a(this.b).get(this.a)).getName() + " 服务？");
      localh.a(2131034424, new an(this)).b(2131034129, null).b();
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.am
 * JD-Core Version:    0.6.0
 */
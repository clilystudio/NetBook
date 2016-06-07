package com.clilystudio.netbook.ui.user;

import android.support.v7.widget.ah;
import com.clilystudio.netbook.model.VipPlan.Plan;
import java.util.ArrayList;
import java.util.List;

final class al extends ah<ao>
{
  private List<VipPlan.Plan> b = new ArrayList();

  public al(RemoveAdActivity paramRemoveAdActivity)
  {
  }

  public final int a()
  {
    if (this.b == null)
      return 0;
    return this.b.size();
  }

  public final void a(List<VipPlan.Plan> paramList)
  {
    this.b.clear();
    this.b.addAll(paramList);
    b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.al
 * JD-Core Version:    0.6.0
 */
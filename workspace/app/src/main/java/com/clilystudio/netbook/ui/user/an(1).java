package com.clilystudio.netbook.ui.user;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.VipPlan.Plan;
import java.util.List;

final class an
  implements DialogInterface.OnClickListener
{
  an(am paramam)
  {
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface.dismiss();
    ak localak = new ak(this.a.b.a, this.a.b.a, "正在购买");
    String[] arrayOfString = new String[2];
    arrayOfString[0] = android.support.design.widget.am.e().getToken();
    arrayOfString[1] = ((VipPlan.Plan)al.a(this.a.b).get(this.a.a)).get_id();
    localak.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.an
 * JD-Core Version:    0.6.0
 */
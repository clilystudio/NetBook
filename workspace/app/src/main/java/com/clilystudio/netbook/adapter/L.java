package com.clilystudio.netbook.adapter;

import android.app.Activity;
import android.content.Context;
import android.support.design.widget.am;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.db.RetweenRecord;
import com.clilystudio.netbook.model.Account;
import com.clilystudio.netbook.model.Tweet;
import com.clilystudio.netbook.model.User;
import com.clilystudio.netbook.ui.user.AuthLoginActivity;
import com.clilystudio.netbook.util.e;

final class L
  implements View.OnClickListener
{
  L(G paramG, Tweet paramTweet, R paramR)
  {
  }

  public final void onClick(View paramView)
  {
    Account localAccount = am.e();
    if (localAccount == null)
    {
      G.a(this.c).startActivity(AuthLoginActivity.a(G.a(this.c)));
      return;
    }
    String str3;
    if (G.a(localAccount, this.a))
    {
      str3 = this.a.get_id();
      if (!this.a.isRetween())
        break label255;
    }
    label255: for (String str4 = this.a.getRefTweet().get_id(); ; str4 = str3)
    {
      G.a(this.c, this.a, this.b);
      e.a((Activity)G.a(this.c), "\t\t转发成功\t\t");
      RetweenRecord.save2DB(localAccount.getUser().getId(), str4);
      U localU = new U(this.c, this.a, this.b);
      String[] arrayOfString = new String[2];
      arrayOfString[0] = am.e().getToken();
      arrayOfString[1] = str4;
      localU.execute(arrayOfString);
      return;
      String str1 = G.a(this.c).getString(2131034472);
      if ((G.a(this.a, localAccount)) && (!this.a.isRetween()));
      for (String str2 = G.a(this.c).getString(2131034423); ; str2 = str1)
      {
        e.a((Activity)G.a(this.c), "\t\t" + str2 + "\t\t");
        return;
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.L
 * JD-Core Version:    0.6.0
 */
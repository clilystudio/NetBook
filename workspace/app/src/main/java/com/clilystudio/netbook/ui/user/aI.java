package com.clilystudio.netbook.ui.user;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.ui.SettingsActivity;

final class aI
  implements View.OnClickListener
{
  aI(UserInfoActivity paramUserInfoActivity)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a, SettingsActivity.class);
    localIntent.putExtra("from_user_info", true);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.user.aI
 * JD-Core Version:    0.6.0
 */
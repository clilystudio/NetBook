package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class bb
  implements View.OnClickListener
{
  bb(ImportantNotificationFragment paramImportantNotificationFragment)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.a.getActivity(), UnimportantNotificationActivity.class);
    this.a.startActivity(localIntent);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.bb
 * JD-Core Version:    0.6.0
 */
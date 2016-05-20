package com.clilystudio.app.netbook.ui;

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

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.bb
 * JD-Core Version:    0.6.2
 */
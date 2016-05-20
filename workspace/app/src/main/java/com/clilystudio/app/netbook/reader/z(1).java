package com.clilystudio.app.netbook.reader;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.app.netbook.ui.user.RemoveAdActivity;

final class z
  implements View.OnClickListener
{
  z(o paramo)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(o.a(this.a), RemoveAdActivity.class);
    o.a(this.a).startActivity(localIntent);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.reader.z
 * JD-Core Version:    0.6.2
 */
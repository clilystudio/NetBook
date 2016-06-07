package com.clilystudio.netbook.reader;

import android.app.Activity;
import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.clilystudio.netbook.ui.user.RemoveAdActivity;

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

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.reader.z
 * JD-Core Version:    0.6.0
 */
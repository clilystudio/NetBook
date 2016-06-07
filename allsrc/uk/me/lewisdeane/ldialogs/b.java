package uk.me.lewisdeane.ldialogs;

import android.view.View;
import android.view.View.OnClickListener;

final class b
  implements View.OnClickListener
{
  b(CustomDialog paramCustomDialog)
  {
  }

  public final void onClick(View paramView)
  {
    if (CustomDialog.a(this.a) != null)
      CustomDialog.a(this.a).b();
    this.a.dismiss();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.b
 * JD-Core Version:    0.6.0
 */
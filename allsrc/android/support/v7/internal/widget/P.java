package android.support.v7.internal.widget;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.ListAdapter;

final class P
  implements DialogInterface.OnClickListener, U
{
  private AlertDialog a;
  private ListAdapter b;
  private CharSequence c;

  private P(SpinnerCompat paramSpinnerCompat)
  {
  }

  public final void a()
  {
    if (this.a != null)
    {
      this.a.dismiss();
      this.a = null;
    }
  }

  public final void a(ListAdapter paramListAdapter)
  {
    this.b = paramListAdapter;
  }

  public final void a(CharSequence paramCharSequence)
  {
    this.c = paramCharSequence;
  }

  public final boolean b()
  {
    if (this.a != null)
      return this.a.isShowing();
    return false;
  }

  public final void c()
  {
    if (this.b == null)
      return;
    AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.d.getContext());
    if (this.c != null)
      localBuilder.setTitle(this.c);
    this.a = localBuilder.setSingleChoiceItems(this.b, this.d.n, this).create();
    this.a.show();
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this.d.setSelection(paramInt);
    if (this.d.l != null)
      this.d.a(null, paramInt, this.b.getItemId(paramInt));
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.P
 * JD-Core Version:    0.6.0
 */
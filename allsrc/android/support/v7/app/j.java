package android.support.v7.app;

import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources.Theme;
import android.os.Bundle;
import android.support.v7.appcompat.R.attr;
import android.util.TypedValue;
import android.view.KeyEvent;

public final class j extends B
  implements DialogInterface
{
  private d a = new d(getContext(), this, getWindow());

  j(Context paramContext, int paramInt)
  {
    super(paramContext, a(paramContext, paramInt));
  }

  static int a(Context paramContext, int paramInt)
  {
    if (paramInt >= 16777216)
      return paramInt;
    TypedValue localTypedValue = new TypedValue();
    paramContext.getTheme().resolveAttribute(R.attr.alertDialogTheme, localTypedValue, true);
    return localTypedValue.resourceId;
  }

  protected final void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.a.a();
  }

  public final boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.a(paramKeyEvent))
      return true;
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public final boolean onKeyUp(int paramInt, KeyEvent paramKeyEvent)
  {
    if (this.a.b(paramKeyEvent))
      return true;
    return super.onKeyUp(paramInt, paramKeyEvent);
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    this.a.a(paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.j
 * JD-Core Version:    0.6.0
 */
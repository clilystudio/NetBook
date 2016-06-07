package android.support.v7.app;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup.LayoutParams;

public class B extends Dialog
  implements l
{
  private m a;

  public B(Context paramContext, int paramInt)
  {
    super(paramContext, paramInt);
    a().a(null);
  }

  public final m a()
  {
    if (this.a == null)
      this.a = m.a(this, this);
    return this.a;
  }

  public void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().b(paramView, paramLayoutParams);
  }

  public void invalidateOptionsMenu()
  {
    a().f();
  }

  protected void onCreate(Bundle paramBundle)
  {
    a().h();
    super.onCreate(paramBundle);
    a().a(paramBundle);
  }

  protected void onStop()
  {
    super.onStop();
    a().d();
  }

  public void setContentView(int paramInt)
  {
    a().a(paramInt);
  }

  public void setContentView(View paramView)
  {
    a().a(paramView);
  }

  public void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    a().a(paramView, paramLayoutParams);
  }

  public void setTitle(int paramInt)
  {
    super.setTitle(paramInt);
    a().a(getContext().getString(paramInt));
  }

  public void setTitle(CharSequence paramCharSequence)
  {
    super.setTitle(paramCharSequence);
    a().a(paramCharSequence);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.B
 * JD-Core Version:    0.6.0
 */
package android.support.v7.app;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.view.MenuInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;

public abstract class m
{
  public static m a(Activity paramActivity, l paraml)
  {
    return a(paramActivity, paramActivity.getWindow(), paraml);
  }

  public static m a(Dialog paramDialog, l paraml)
  {
    return a(paramDialog.getContext(), paramDialog.getWindow(), paraml);
  }

  private static m a(Context paramContext, Window paramWindow, l paraml)
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 14)
      return new q(paramContext, paramWindow, paraml);
    if (i >= 11)
      return new p(paramContext, paramWindow, paraml);
    return new AppCompatDelegateImplV7(paramContext, paramWindow, paraml);
  }

  public abstract a a();

  public abstract void a(int paramInt);

  public abstract void a(Configuration paramConfiguration);

  public abstract void a(Bundle paramBundle);

  public abstract void a(View paramView);

  public abstract void a(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  public abstract void a(CharSequence paramCharSequence);

  public abstract MenuInflater b();

  public abstract void b(View paramView, ViewGroup.LayoutParams paramLayoutParams);

  public abstract boolean b(int paramInt);

  public abstract void c();

  public abstract void d();

  public abstract void e();

  public abstract void f();

  public abstract void g();

  public abstract void h();
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.app.m
 * JD-Core Version:    0.6.0
 */
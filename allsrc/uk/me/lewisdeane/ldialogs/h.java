package uk.me.lewisdeane.ldialogs;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.util.DisplayMetrics;
import android.view.View;

public final class h
{
  public final Context a;
  public DialogInterface.OnClickListener b;
  public DialogInterface.OnClickListener c;
  public String d = "";
  public String e = "";
  public String f = "";
  public String g = "";
  public String h = "";
  private Resources i;
  private View j;
  private CharSequence[] k;
  private DialogInterface.OnClickListener l;
  private boolean m;
  private boolean n = true;

  public h(Context paramContext)
  {
    this.a = paramContext;
    this.i = paramContext.getResources();
  }

  private float c(int paramInt)
  {
    return paramInt * this.a.getResources().getDisplayMetrics().density;
  }

  public final AlertDialog a()
  {
    Object localObject;
    if (this.k != null)
    {
      String[] arrayOfString = new String[this.k.length];
      System.arraycopy(this.k, 0, arrayOfString, 0, this.k.length);
      localObject = new e(this.a, this.d, arrayOfString);
      ((e)localObject).setCancelable(this.n);
      ((e)localObject).a(new i(this, (e)localObject));
    }
    do
    {
      return localObject;
      if (Build.VERSION.SDK_INT < 14)
      {
        AlertDialog.Builder localBuilder = new AlertDialog.Builder(this.a).setTitle(this.d).setCancelable(this.n).setMessage(this.e);
        if (this.f != null)
          localBuilder.setPositiveButton(this.f, this.b);
        if (this.g != null)
          localBuilder.setNegativeButton(this.g, this.c);
        if (this.j != null)
          localBuilder.setView(this.j);
        return localBuilder.create();
      }
      localObject = new CustomDialog(this);
      ((CustomDialog)localObject).a(new j(this, (CustomDialog)localObject));
    }
    while (this.j == null);
    ((CustomDialog)localObject).a(this.j);
    return (AlertDialog)localObject;
  }

  public final h a(int paramInt)
  {
    this.d = this.i.getString(paramInt);
    return this;
  }

  public final h a(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return a(this.i.getString(paramInt), paramOnClickListener);
  }

  public final h a(View paramView)
  {
    this.j = paramView;
    return this;
  }

  public final h a(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.f = paramString;
    this.b = paramOnClickListener;
    return this;
  }

  public final h a(boolean paramBoolean)
  {
    this.n = paramBoolean;
    return this;
  }

  public final h a(CharSequence[] paramArrayOfCharSequence, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.k = paramArrayOfCharSequence;
    this.l = paramOnClickListener;
    return this;
  }

  public final AlertDialog b()
  {
    AlertDialog localAlertDialog = a();
    localAlertDialog.show();
    return localAlertDialog;
  }

  public final h b(int paramInt)
  {
    this.e = this.i.getString(paramInt);
    return this;
  }

  public final h b(int paramInt, DialogInterface.OnClickListener paramOnClickListener)
  {
    return b(this.i.getString(paramInt), paramOnClickListener);
  }

  public final h b(View paramView)
  {
    int i1 = (int)c(22);
    paramView.setPadding(i1, (int)c(8), i1, 0);
    this.j = paramView;
    return this;
  }

  public final h b(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.g = paramString;
    this.c = paramOnClickListener;
    return this;
  }

  public final h b(boolean paramBoolean)
  {
    this.m = true;
    return this;
  }

  public final boolean c()
  {
    return this.m;
  }

  public final boolean d()
  {
    return this.n;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     uk.me.lewisdeane.ldialogs.h
 * JD-Core Version:    0.6.0
 */
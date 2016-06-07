package com.arcsoft.hpay100.c;

import android.content.Context;
import android.content.DialogInterface.OnClickListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.TextView;

public final class e
{
  private Context a;
  private String b;
  private String c;
  private String d;
  private DialogInterface.OnClickListener e;
  private DialogInterface.OnClickListener f;

  public e(Context paramContext)
  {
    this.a = paramContext;
  }

  public final a a(int paramInt)
  {
    LayoutInflater localLayoutInflater = (LayoutInflater)this.a.getSystemService("layout_inflater");
    int i = com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "style", "hpay_custom_confim_dialog");
    a locala = new a(this.a, i);
    View localView = localLayoutInflater.inflate(paramInt, null);
    ((TextView)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "tv_giveup_recharge"))).setText("放弃充值");
    locala.addContentView(localView, new ViewGroup.LayoutParams(-1, -2));
    if (this.c != null)
    {
      ((Button)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_positiveButton"))).setText(this.c);
      if (this.e != null)
        ((Button)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_positiveButton"))).setOnClickListener(new f(this, locala));
      if (this.d == null)
        break label323;
      ((Button)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_negativeButton"))).setText(this.d);
      if (this.f != null)
        ((Button)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_negativeButton"))).setOnClickListener(new g(this, locala));
    }
    while (true)
    {
      if (this.b != null)
        ((TextView)localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_message"))).setText(this.b);
      locala.setContentView(localView);
      return locala;
      localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_positiveButton")).setVisibility(8);
      break;
      label323: localView.findViewById(com.arcsoft.hpay100.a.a.a(this.a.getApplicationContext(), "id", "hpay_negativeButton")).setVisibility(8);
    }
  }

  public final e a(String paramString)
  {
    this.b = paramString;
    return this;
  }

  public final e a(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.c = paramString;
    this.e = paramOnClickListener;
    return this;
  }

  public final e b(String paramString, DialogInterface.OnClickListener paramOnClickListener)
  {
    this.d = paramString;
    this.f = paramOnClickListener;
    return this;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.arcsoft.hpay100.c.e
 * JD-Core Version:    0.6.0
 */
package com.clilystudio.app.netbook.util;

import android.app.Activity;
import android.app.Dialog;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import uk.me.lewisdeane.ldialogs.h;

public final class A
{
  private Activity a;
  private ProgressBar b;
  private TextView c;
  private Dialog d;
  private String e = "";
  private String f = "";
  private String g;
  private String h;
  private int i;
  private Runnable j = new B(this);
  private Handler k = new C(this);

  public A(Activity paramActivity)
  {
    this.a = paramActivity;
  }

  public final void a()
  {
    h localh = new h(this.a);
    localh.d = "正在下载";
    View localView = LayoutInflater.from(this.a).inflate(2130903328, null);
    this.b = ((ProgressBar)localView.findViewById(2131493800));
    this.c = ((TextView)localView.findViewById(2131493801));
    localh.a(localView);
    this.d = localh.a();
    this.d.setCanceledOnTouchOutside(false);
    this.d.show();
    new Thread(this.j).start();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.util.A
 * JD-Core Version:    0.6.2
 */
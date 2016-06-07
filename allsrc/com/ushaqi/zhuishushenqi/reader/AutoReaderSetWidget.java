package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.umeng.a.b;

public class AutoReaderSetWidget extends LinearLayout
  implements View.OnClickListener
{
  private Context a;
  private int b = 5;
  private int c;
  private TextView d;
  private Button e;
  private Button f;
  private Button g;
  private a h;

  public AutoReaderSetWidget(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.a = paramContext;
  }

  private void e()
  {
    TextView localTextView = this.d;
    Resources localResources = getResources();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.b);
    localTextView.setText(localResources.getString(2131034319, arrayOfObject));
  }

  public final void a()
  {
    this.c = this.b;
    setVisibility(0);
  }

  public final void b()
  {
    if (this.c != this.b)
      b.a(getContext(), "auto_read_speed", null, this.b);
    setVisibility(8);
  }

  public final void c()
  {
    if (this.b < 10)
    {
      this.b = (1 + this.b);
      e();
      com.arcsoft.hpay100.a.a.b(this.a, "auto_reader_speed", this.b);
    }
  }

  public final void d()
  {
    if (this.b > 1)
    {
      this.b = (-1 + this.b);
      e();
      com.arcsoft.hpay100.a.a.b(this.a, "auto_reader_speed", this.b);
    }
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131493867:
      this.h.b();
      return;
    case 2131493868:
      this.h.a();
      return;
    case 2131493869:
    }
    com.arcsoft.hpay100.a.a.E(getContext());
    this.h.c();
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    return super.onTouchEvent(paramMotionEvent);
  }

  public void setOptionClickListener(a parama)
  {
    this.h = parama;
    this.b = com.arcsoft.hpay100.a.a.a(this.a, "auto_reader_speed", 5);
    this.d = ((TextView)findViewById(2131493865));
    e();
    this.e = ((Button)findViewById(2131493867));
    this.e.setOnClickListener(this);
    this.f = ((Button)findViewById(2131493868));
    this.f.setOnClickListener(this);
    this.g = ((Button)findViewById(2131493869));
    this.g.setOnClickListener(this);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.AutoReaderSetWidget
 * JD-Core Version:    0.6.0
 */
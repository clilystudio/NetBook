package com.ushaqi.zhuishushenqi.reader;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.umeng.update.a;

public class ReaderWebActionBar extends RelativeLayout
{
  private a a;
  private TextView b;
  private View c;
  private View d;
  private View e;
  private TextView f;

  public ReaderWebActionBar(Context paramContext)
  {
    super(paramContext);
  }

  public ReaderWebActionBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ReaderWebActionBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  private void b(boolean paramBoolean)
  {
    View localView = findViewById(2131493893);
    if (paramBoolean);
    for (int i = 0; ; i = 8)
    {
      localView.setVisibility(i);
      return;
    }
  }

  public final void a(boolean paramBoolean)
  {
    View localView = this.d;
    if (paramBoolean);
    for (int i = 0; ; i = 4)
    {
      localView.setVisibility(i);
      return;
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    this.b = ((TextView)findViewById(2131493882));
    this.c = findViewById(2131493861);
    this.d = findViewById(2131493864);
    this.e = findViewById(2131493862);
    this.f = ((TextView)findViewById(2131493894));
    View localView = findViewById(2131493881);
    cA localcA = new cA(this);
    this.c.setOnClickListener(localcA);
    this.e.setOnClickListener(localcA);
    findViewById(2131493893).setOnClickListener(localcA);
    localView.setOnClickListener(localcA);
  }

  public void setChapterLink(String paramString)
  {
    if ((paramString == null) || ("".equals(paramString)))
    {
      b(false);
      return;
    }
    b(true);
    this.f.setText(paramString);
  }

  public void setOnBtnClickListener$74b8600c(a parama)
  {
    this.a = parama;
  }

  public void setTitle(String paramString)
  {
    this.b.setText(paramString);
  }

  public void setTopicCount(String paramString)
  {
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.ReaderWebActionBar
 * JD-Core Version:    0.6.0
 */
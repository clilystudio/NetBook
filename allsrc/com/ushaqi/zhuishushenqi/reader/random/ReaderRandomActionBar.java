package com.ushaqi.zhuishushenqi.reader.random;

import android.content.Context;
import android.support.design.widget.am;
import android.util.AttributeSet;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.umeng.update.a;

public class ReaderRandomActionBar extends RelativeLayout
{
  private TextView a;
  private a b;

  public ReaderRandomActionBar(Context paramContext)
  {
    super(paramContext);
  }

  public ReaderRandomActionBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public ReaderRandomActionBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, -1);
    localLayoutParams.setMargins(0, am.k(getContext()), 0, 0);
    setLayoutParams(localLayoutParams);
    View localView = findViewById(2131493934);
    this.a = ((TextView)findViewById(2131493935));
    localView.setOnClickListener(new c(this));
  }

  public void setOnBtnClickListener$3ce42dcd(a parama)
  {
    this.b = parama;
  }

  public void setTitle(String paramString)
  {
    this.a.setText(paramString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.reader.random.ReaderRandomActionBar
 * JD-Core Version:    0.6.0
 */
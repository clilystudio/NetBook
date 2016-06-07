package com.clilystudio.netbook.widget;

import android.content.Context;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Checkable;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.RelativeLayout;

public class SettingItem extends RelativeLayout
  implements View.OnClickListener, Checkable
{
  private boolean a;
  private SwitchCompat b;
  private CompoundButton.OnCheckedChangeListener c;

  public SettingItem(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public boolean isChecked()
  {
    return this.a;
  }

  public void onClick(View paramView)
  {
    toggle();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setOnClickListener(this);
    this.b = ((SwitchCompat)findViewById(2131493902));
  }

  public void setCheckListener(CompoundButton.OnCheckedChangeListener paramOnCheckedChangeListener)
  {
    this.c = paramOnCheckedChangeListener;
  }

  public void setChecked(boolean paramBoolean)
  {
    if (this.a != paramBoolean)
    {
      this.a = paramBoolean;
      this.b.setChecked(paramBoolean);
      if (this.c != null)
        this.c.onCheckedChanged(this.b, this.a);
    }
  }

  public void toggle()
  {
    if (!this.a);
    for (boolean bool = true; ; bool = false)
    {
      setChecked(bool);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.SettingItem
 * JD-Core Version:    0.6.0
 */
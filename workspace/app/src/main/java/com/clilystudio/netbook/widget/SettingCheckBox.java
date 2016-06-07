package com.clilystudio.netbook.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v7.widget.SwitchCompat;
import android.util.AttributeSet;
import com.arcsoft.hpay100.a.a;
import com.clilystudio.netbook.R.styleable;

public class SettingCheckBox extends SwitchCompat
{
  private final String a;
  private final boolean b;

  public SettingCheckBox(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.SettingCheckBox);
    this.a = localTypedArray.getString(0);
    this.b = localTypedArray.getBoolean(1, false);
    localTypedArray.recycle();
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    setChecked(a.a(getContext(), this.a, this.b));
    setOnCheckedChangeListener(new az(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.SettingCheckBox
 * JD-Core Version:    0.6.0
 */
package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.EditText;

public class SearchEditText extends EditText
{
  private boolean a;
  private ax b;

  public SearchEditText(Context paramContext)
  {
    super(paramContext);
    a();
  }

  public SearchEditText(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }

  private void a()
  {
    addTextChangedListener(new aw(this));
  }

  public void setOnUserInputListener(ax paramax)
  {
    this.b = paramax;
  }

  public void setTextByCode(String paramString)
  {
    if (paramString != null)
    {
      this.a = true;
      setText(paramString);
      setSelection(paramString.length());
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.SearchEditText
 * JD-Core Version:    0.6.0
 */
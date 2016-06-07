package com.ushaqi.zhuishushenqi.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.ui.bd;
import com.ushaqi.zhuishushenqi.ui.be;
import com.ushaqi.zhuishushenqi.ui.by;

public class LinkifyTextView extends TextView
{
  public LinkifyTextView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public void setLinkifyText(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      setText(new by(getContext(), paramString).b());
      setMovementMethod(new bd());
      return;
    }
    setText(new be(getContext(), paramString).b());
    setMovementMethod(new bd());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.widget.LinkifyTextView
 * JD-Core Version:    0.6.0
 */
package com.clilystudio.netbook.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.LinearLayout;

public class GameGiftView extends LinearLayout
{
  private boolean a;

  public GameGiftView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public final void a(String paramString, boolean paramBoolean)
  {
    this.a = paramBoolean;
    new L(this, 0).b(new String[] { paramString });
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.GameGiftView
 * JD-Core Version:    0.6.0
 */
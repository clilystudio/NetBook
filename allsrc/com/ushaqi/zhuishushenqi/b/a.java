package com.ushaqi.zhuishushenqi.b;

import android.content.Context;
import android.content.Intent;
import android.view.View;
import com.ushaqi.zhuishushenqi.exception.UnImplementException;
import com.ushaqi.zhuishushenqi.model.InsideLink;
import com.ushaqi.zhuishushenqi.model.InsideLinkType;
import com.ushaqi.zhuishushenqi.util.InsideLinkIntent;

public final class a extends b
{
  private InsideLink b;

  public a(Context paramContext, InsideLink paramInsideLink)
  {
    super(paramContext);
    this.b = paramInsideLink;
  }

  final Intent a()
  {
    try
    {
      InsideLinkIntent localInsideLinkIntent = new InsideLinkIntent(this.a, this.b);
      return localInsideLinkIntent;
    }
    catch (UnImplementException localUnImplementException)
    {
      localUnImplementException.printStackTrace();
    }
    return null;
  }

  public final void onClick(View paramView)
  {
    super.onClick(paramView);
    Context localContext = this.a;
    InsideLink localInsideLink = this.b;
    com.umeng.a.b.a(localContext, "post_official_link_click", localInsideLink.getType().getName() + "-" + localInsideLink.getLabel());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.b.a
 * JD-Core Version:    0.6.0
 */
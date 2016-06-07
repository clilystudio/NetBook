package com.ushaqi.zhuishushenqi.util;

import android.annotation.SuppressLint;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import com.ushaqi.zhuishushenqi.exception.UnImplementException;
import com.ushaqi.zhuishushenqi.model.InsideLink;
import com.ushaqi.zhuishushenqi.ui.AdWebViewActivity;
import com.ushaqi.zhuishushenqi.ui.BookInfoActivity;
import com.ushaqi.zhuishushenqi.ui.SplashActivity;
import com.ushaqi.zhuishushenqi.ui.game.GameDetailActivity;
import com.ushaqi.zhuishushenqi.ui.post.BookHelpActivity;
import com.ushaqi.zhuishushenqi.ui.post.PostDetailActivity;
import com.ushaqi.zhuishushenqi.ui.post.ReviewActivity;
import com.ushaqi.zhuishushenqi.ui.ugcbook.UGCDetailActivity;
import com.ushaqi.zhuishushenqi.util.a.b;

@SuppressLint({"ParcelCreator"})
public class InsideLinkIntent extends Intent
{
  private final Context a;
  private boolean b;

  public InsideLinkIntent(Context paramContext, InsideLink paramInsideLink)
  {
    this.a = paramContext;
    a(paramInsideLink);
  }

  public InsideLinkIntent(Context paramContext, String paramString)
  {
    this.a = paramContext;
    new b();
    if (paramString != null)
    {
      a(b.a(paramString));
      return;
    }
    throw new UnImplementException("Not implement");
  }

  public InsideLinkIntent(Context paramContext, String paramString, boolean paramBoolean)
  {
    this.b = true;
    this.a = paramContext;
    new b();
    if (paramString != null)
    {
      a(b.a(paramString));
      return;
    }
    throw new UnImplementException("Not implement");
  }

  private void a()
  {
    if ((this.a instanceof SplashActivity))
      putExtra("from_splash", true);
  }

  private void a(InsideLink paramInsideLink)
  {
    switch (G.a[paramInsideLink.getType().ordinal()])
    {
    default:
      throw new UnImplementException("Not implement");
    case 1:
      String str = paramInsideLink.getValue();
      setComponent(new ComponentName(this.a, GameDetailActivity.class));
      if (str.contains("micro"))
      {
        this.b = true;
        str = str.substring(5);
      }
      putExtra("game_id", str);
      if (this.b)
        putExtra("is_micro_game", this.b);
      a();
      return;
    case 2:
      setComponent(new ComponentName(this.a, PostDetailActivity.class));
      putExtra("PostBookId", paramInsideLink.getValue());
      putExtra("post_type_key", "ramble");
      a();
      return;
    case 3:
      setComponent(new ComponentName(this.a, AdWebViewActivity.class));
      putExtra("extra_url", paramInsideLink.getValue());
      putExtra("extra_title", paramInsideLink.getLabel());
      a();
      return;
    case 4:
      setComponent(new ComponentName(this.a, BookInfoActivity.class));
      putExtra("book_id", paramInsideLink.getValue());
      a();
      return;
    case 5:
      setComponent(new ComponentName(this.a, BookHelpActivity.class));
      putExtra("extraBookHelpId", paramInsideLink.getValue());
      a();
      return;
    case 6:
      setComponent(new ComponentName(this.a, ReviewActivity.class));
      putExtra("extraReviewId", paramInsideLink.getValue());
      a();
      return;
    case 7:
    }
    setComponent(new ComponentName(this.a, UGCDetailActivity.class));
    putExtra("book_id", paramInsideLink.getValue());
    a();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.util.InsideLinkIntent
 * JD-Core Version:    0.6.0
 */
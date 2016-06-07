package com.clilystudio.netbook.ui;

import android.content.Context;
import android.util.AttributeSet;
import com.nostra13.universalimageloader.core.d;
import com.nostra13.universalimageloader.core.e;
import com.nostra13.universalimageloader.core.f;
import com.clilystudio.netbook.api.ApiService;

public class SmartImageView extends MaskAbleImageView
{
  public SmartImageView(Context paramContext)
  {
    super(paramContext);
  }

  public SmartImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }

  public SmartImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }

  protected com.nostra13.universalimageloader.core.b.a a()
  {
    return null;
  }

  public void setApiImageUrl(String paramString, int paramInt)
  {
    setImageUrl(ApiService.a + paramString, paramInt);
  }

  public void setImageUrl(String paramString)
  {
    setImageUrl(paramString, 0);
  }

  public void setImageUrl(String paramString, int paramInt)
  {
    setImageUrl(paramString, paramInt, null);
  }

  public void setImageUrl(String paramString, int paramInt, com.nostra13.universalimageloader.core.d.a parama)
  {
    e locale = new e().a(true).b(true);
    if (paramInt != 0)
      locale.a(paramInt);
    com.nostra13.universalimageloader.core.b.a locala = a();
    if (locala != null)
      locale.a(locala);
    d locald = locale.a();
    if (("Official".equals("macServer")) && (paramString != null) && (paramString.contains("static")))
      return;
    f.a().a(paramString, this, locald, parama);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.SmartImageView
 * JD-Core Version:    0.6.0
 */
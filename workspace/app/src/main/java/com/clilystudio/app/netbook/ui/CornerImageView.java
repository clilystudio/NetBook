package com.clilystudio.app.netbook.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.BitmapFactory;
import android.net.Uri;
import android.util.AttributeSet;
import com.nostra13.universalimageloader.core.b.b;
import com.clilystudio.app.netbook.R.styleable;
import m.framework.utils.Utils;

public class CornerImageView extends SmartImageView
{
  private int b;

  public CornerImageView(Context paramContext)
  {
    super(paramContext);
    this.b = Utils.dipToPx(paramContext, 2);
  }

  public CornerImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, R.styleable.CornerSmartImageView);
    this.b = ((int)localTypedArray.getDimension(localTypedArray.getIndex(0), 2.0F));
    localTypedArray.recycle();
  }

  protected com.nostra13.universalimageloader.core.b.a a()
  {
    return new b(this.b);
  }

  public void setImageURI(Uri paramUri)
  {
    setImageBitmap(com.arcsoft.hpay100.a.a.a(BitmapFactory.decodeFile(paramUri.getPath())));
  }

  public void setImageUrl(String paramString, int paramInt)
  {
    super.setImageUrl(paramString, paramInt);
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.CornerImageView
 * JD-Core Version:    0.6.2
 */
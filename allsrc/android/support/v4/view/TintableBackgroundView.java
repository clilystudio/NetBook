package android.support.v4.view;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;

public abstract interface TintableBackgroundView
{
  public abstract ColorStateList getSupportBackgroundTintList();

  public abstract PorterDuff.Mode getSupportBackgroundTintMode();

  public abstract void setSupportBackgroundTintList(ColorStateList paramColorStateList);

  public abstract void setSupportBackgroundTintMode(PorterDuff.Mode paramMode);
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.TintableBackgroundView
 * JD-Core Version:    0.6.0
 */
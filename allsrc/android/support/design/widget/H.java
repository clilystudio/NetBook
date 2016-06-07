package android.support.design.widget;

import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.support.design.R.color;
import android.view.View;

abstract class H
{
  static final int[] b = { 16842919, 16842910 };
  static final int[] c = { 16842908, 16842910 };
  static final int[] d = new int[0];
  final View e;
  final N f;

  H(View paramView, N paramN)
  {
    this.e = paramView;
    this.f = paramN;
  }

  final Drawable a(int paramInt, ColorStateList paramColorStateList)
  {
    Resources localResources = this.e.getResources();
    i locali = d();
    locali.a(localResources.getColor(R.color.fab_stroke_top_outer_color), localResources.getColor(R.color.fab_stroke_top_inner_color), localResources.getColor(R.color.fab_stroke_end_inner_color), localResources.getColor(R.color.fab_stroke_end_outer_color));
    locali.a(paramInt);
    locali.a(paramColorStateList.getDefaultColor());
    return locali;
  }

  abstract void a();

  abstract void a(float paramFloat);

  abstract void a(int paramInt);

  abstract void a(ColorStateList paramColorStateList);

  abstract void a(PorterDuff.Mode paramMode);

  abstract void a(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode, int paramInt1, int paramInt2);

  abstract void a(int[] paramArrayOfInt);

  abstract void b();

  abstract void b(float paramFloat);

  abstract void c();

  i d()
  {
    return new i();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.design.widget.H
 * JD-Core Version:    0.6.0
 */
package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.util.AttributeSet;
import android.view.View;
import android.widget.AbsListView;
import android.widget.ListView;
import java.lang.reflect.Field;

public class ListViewCompat extends ListView
{
  private Rect a = new Rect();
  private int b = 0;
  private int c = 0;
  private int d = 0;
  private int e = 0;
  private Field f;
  private H g;

  static
  {
    new int[] { 0 };
  }

  public ListViewCompat(Context paramContext)
  {
    this(paramContext, null);
  }

  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ListViewCompat(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    try
    {
      this.f = AbsListView.class.getDeclaredField("mIsChildViewEnabled");
      this.f.setAccessible(true);
      return;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      localNoSuchFieldException.printStackTrace();
    }
  }

  private void a(int paramInt, View paramView)
  {
    Rect localRect = this.a;
    localRect.set(paramView.getLeft(), paramView.getTop(), paramView.getRight(), paramView.getBottom());
    localRect.left -= this.b;
    localRect.top -= this.c;
    localRect.right += this.d;
    localRect.bottom += this.e;
    try
    {
      boolean bool1 = this.f.getBoolean(this);
      Field localField;
      if (paramView.isEnabled() != bool1)
      {
        localField = this.f;
        if (bool1)
          break label131;
      }
      label131: for (boolean bool2 = true; ; bool2 = false)
      {
        localField.set(this, Boolean.valueOf(bool2));
        if (paramInt != -1)
          refreshDrawableState();
        return;
      }
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      localIllegalAccessException.printStackTrace();
    }
  }

  protected final void a(int paramInt, View paramView, float paramFloat1, float paramFloat2)
  {
    boolean bool1 = true;
    Drawable localDrawable1 = getSelector();
    boolean bool2;
    float f1;
    float f2;
    if ((localDrawable1 != null) && (paramInt != -1))
    {
      bool2 = bool1;
      if (bool2)
        localDrawable1.setVisible(false, false);
      a(paramInt, paramView);
      if (bool2)
      {
        Rect localRect = this.a;
        f1 = localRect.exactCenterX();
        f2 = localRect.exactCenterY();
        if (getVisibility() != 0)
          break label123;
      }
    }
    while (true)
    {
      localDrawable1.setVisible(bool1, false);
      DrawableCompat.setHotspot(localDrawable1, f1, f2);
      Drawable localDrawable2 = getSelector();
      if ((localDrawable2 != null) && (paramInt != -1))
        DrawableCompat.setHotspot(localDrawable2, paramFloat1, paramFloat2);
      return;
      bool2 = false;
      break;
      label123: bool1 = false;
    }
  }

  protected final void a(boolean paramBoolean)
  {
    if (this.g != null)
      this.g.a(paramBoolean);
  }

  protected boolean a()
  {
    return false;
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    if (!this.a.isEmpty())
    {
      Drawable localDrawable = getSelector();
      if (localDrawable != null)
      {
        localDrawable.setBounds(this.a);
        localDrawable.draw(paramCanvas);
      }
    }
    super.dispatchDraw(paramCanvas);
  }

  protected void drawableStateChanged()
  {
    boolean bool = true;
    super.drawableStateChanged();
    a(bool);
    Drawable localDrawable = getSelector();
    if (localDrawable != null)
      if ((!a()) || (!isPressed()))
        break label48;
    while (true)
    {
      if (bool)
        localDrawable.setState(getDrawableState());
      return;
      label48: bool = false;
    }
  }

  public void setSelector(Drawable paramDrawable)
  {
    if (paramDrawable != null);
    for (H localH = new H(paramDrawable); ; localH = null)
    {
      this.g = localH;
      super.setSelector(this.g);
      Rect localRect = new Rect();
      if (paramDrawable != null)
        paramDrawable.getPadding(localRect);
      this.b = localRect.left;
      this.c = localRect.top;
      this.d = localRect.right;
      this.e = localRect.bottom;
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ListViewCompat
 * JD-Core Version:    0.6.0
 */
package android.support.v7.widget;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Paint;
import android.graphics.Shader.TileMode;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.ClipDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.RoundRectShape;
import android.support.v4.graphics.drawable.DrawableWrapper;
import android.support.v4.view.ViewCompat;
import android.support.v7.appcompat.R.attr;
import android.support.v7.internal.widget.Y;
import android.util.AttributeSet;
import android.widget.RatingBar;
import com.handmark.pulltorefresh.library.internal.e;

public class AppCompatRatingBar extends RatingBar
{
  private static final int[] a = { 16843067, 16843068 };
  private Bitmap b;

  public AppCompatRatingBar(Context paramContext)
  {
    this(paramContext, null);
  }

  public AppCompatRatingBar(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.ratingBarStyle);
  }

  public AppCompatRatingBar(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    if (Y.a)
    {
      e locale = e.a(getContext(), paramAttributeSet, a, paramInt, 0);
      Drawable localDrawable1 = locale.b(0);
      if (localDrawable1 != null)
        setIndeterminateDrawable(a(localDrawable1));
      Drawable localDrawable2 = locale.b(1);
      if (localDrawable2 != null)
        setProgressDrawable(a(localDrawable2, false));
      locale.b();
    }
  }

  private Drawable a(Drawable paramDrawable)
  {
    if ((paramDrawable instanceof AnimationDrawable))
    {
      AnimationDrawable localAnimationDrawable1 = (AnimationDrawable)paramDrawable;
      int i = localAnimationDrawable1.getNumberOfFrames();
      AnimationDrawable localAnimationDrawable2 = new AnimationDrawable();
      localAnimationDrawable2.setOneShot(localAnimationDrawable1.isOneShot());
      for (int j = 0; j < i; j++)
      {
        Drawable localDrawable = a(localAnimationDrawable1.getFrame(j), true);
        localDrawable.setLevel(10000);
        localAnimationDrawable2.addFrame(localDrawable, localAnimationDrawable1.getDuration(j));
      }
      localAnimationDrawable2.setLevel(10000);
      paramDrawable = localAnimationDrawable2;
    }
    return paramDrawable;
  }

  private Drawable a(Drawable paramDrawable, boolean paramBoolean)
  {
    int i = 0;
    if ((paramDrawable instanceof DrawableWrapper))
    {
      Drawable localDrawable2 = ((DrawableWrapper)paramDrawable).getWrappedDrawable();
      if (localDrawable2 != null)
      {
        Drawable localDrawable3 = a(localDrawable2, paramBoolean);
        ((DrawableWrapper)paramDrawable).setWrappedDrawable(localDrawable3);
      }
    }
    do
    {
      return paramDrawable;
      if (!(paramDrawable instanceof LayerDrawable))
        continue;
      LayerDrawable localLayerDrawable1 = (LayerDrawable)paramDrawable;
      int j = localLayerDrawable1.getNumberOfLayers();
      Drawable[] arrayOfDrawable = new Drawable[j];
      int k = 0;
      if (k < j)
      {
        int m = localLayerDrawable1.getId(k);
        Drawable localDrawable1 = localLayerDrawable1.getDrawable(k);
        if ((m == 16908301) || (m == 16908303));
        for (boolean bool = true; ; bool = false)
        {
          arrayOfDrawable[k] = a(localDrawable1, bool);
          k++;
          break;
        }
      }
      LayerDrawable localLayerDrawable2 = new LayerDrawable(arrayOfDrawable);
      while (i < j)
      {
        localLayerDrawable2.setId(i, localLayerDrawable1.getId(i));
        i++;
      }
      return localLayerDrawable2;
    }
    while (!(paramDrawable instanceof BitmapDrawable));
    Bitmap localBitmap = ((BitmapDrawable)paramDrawable).getBitmap();
    if (this.b == null)
      this.b = localBitmap;
    ShapeDrawable localShapeDrawable = new ShapeDrawable(new RoundRectShape(new float[] { 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F, 5.0F }, null, null));
    BitmapShader localBitmapShader = new BitmapShader(localBitmap, Shader.TileMode.REPEAT, Shader.TileMode.CLAMP);
    localShapeDrawable.getPaint().setShader(localBitmapShader);
    if (paramBoolean)
      return new ClipDrawable(localShapeDrawable, 3, 1);
    return localShapeDrawable;
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    monitorenter;
    try
    {
      super.onMeasure(paramInt1, paramInt2);
      if (this.b != null)
        setMeasuredDimension(ViewCompat.resolveSizeAndState(this.b.getWidth() * getNumStars(), paramInt1, 0), getMeasuredHeight());
      monitorexit;
      return;
    }
    finally
    {
      localObject = finally;
      monitorexit;
    }
    throw localObject;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.AppCompatRatingBar
 * JD-Core Version:    0.6.0
 */
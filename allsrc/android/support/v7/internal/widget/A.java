package android.support.v7.internal.widget;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build.VERSION;
import android.support.v7.appcompat.R.styleable;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.PopupWindow;
import com.handmark.pulltorefresh.library.internal.e;
import java.lang.reflect.Field;

public final class A extends PopupWindow
{
  private final boolean a;

  public A(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    e locale = e.a(paramContext, paramAttributeSet, R.styleable.PopupWindow, paramInt, 0);
    this.a = locale.a(R.styleable.PopupWindow_overlapAnchor, false);
    setBackgroundDrawable(locale.a(R.styleable.PopupWindow_android_popupBackground));
    locale.b();
    if (Build.VERSION.SDK_INT < 14);
    try
    {
      Field localField1 = PopupWindow.class.getDeclaredField("mAnchor");
      localField1.setAccessible(true);
      Field localField2 = PopupWindow.class.getDeclaredField("mOnScrollChangedListener");
      localField2.setAccessible(true);
      localField2.set(this, new B(localField1, this, (ViewTreeObserver.OnScrollChangedListener)localField2.get(this)));
      return;
    }
    catch (Exception localException)
    {
      Log.d("AppCompatPopupWindow", "Exception while installing workaround OnScrollChangedListener", localException);
    }
  }

  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2)
  {
    if ((Build.VERSION.SDK_INT < 21) && (this.a))
      paramInt2 -= paramView.getHeight();
    super.showAsDropDown(paramView, paramInt1, paramInt2);
  }

  @TargetApi(19)
  public final void showAsDropDown(View paramView, int paramInt1, int paramInt2, int paramInt3)
  {
    if ((Build.VERSION.SDK_INT < 21) && (this.a))
      paramInt2 -= paramView.getHeight();
    super.showAsDropDown(paramView, paramInt1, paramInt2, paramInt3);
  }

  public final void update(View paramView, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if ((Build.VERSION.SDK_INT < 21) && (this.a));
    for (int i = paramInt2 - paramView.getHeight(); ; i = paramInt2)
    {
      super.update(paramView, paramInt1, i, paramInt3, paramInt4);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.A
 * JD-Core Version:    0.6.0
 */
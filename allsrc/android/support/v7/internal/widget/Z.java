package android.support.v7.internal.widget;

import android.graphics.PorterDuff.Mode;
import android.graphics.PorterDuffColorFilter;
import android.support.v4.util.LruCache;

final class Z extends LruCache<Integer, PorterDuffColorFilter>
{
  public Z(int paramInt)
  {
    super(6);
  }

  private static int b(int paramInt, PorterDuff.Mode paramMode)
  {
    return 31 * (paramInt + 31) + paramMode.hashCode();
  }

  final PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode)
  {
    return (PorterDuffColorFilter)get(Integer.valueOf(b(paramInt, paramMode)));
  }

  final PorterDuffColorFilter a(int paramInt, PorterDuff.Mode paramMode, PorterDuffColorFilter paramPorterDuffColorFilter)
  {
    return (PorterDuffColorFilter)put(Integer.valueOf(b(paramInt, paramMode)), paramPorterDuffColorFilter);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.Z
 * JD-Core Version:    0.6.0
 */
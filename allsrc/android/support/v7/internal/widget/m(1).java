package android.support.v7.internal.widget;

import android.content.pm.ResolveInfo;
import java.math.BigDecimal;

public final class m
  implements Comparable<m>
{
  public final ResolveInfo a;
  public float b;

  public final boolean equals(Object paramObject)
  {
    if (this == paramObject);
    m localm;
    do
    {
      return true;
      if (paramObject == null)
        return false;
      if (getClass() != paramObject.getClass())
        return false;
      localm = (m)paramObject;
    }
    while (Float.floatToIntBits(this.b) == Float.floatToIntBits(localm.b));
    return false;
  }

  public final int hashCode()
  {
    return 31 + Float.floatToIntBits(this.b);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("[");
    localStringBuilder.append("resolveInfo:").append(this.a.toString());
    localStringBuilder.append("; weight:").append(new BigDecimal(this.b));
    localStringBuilder.append("]");
    return localStringBuilder.toString();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.m
 * JD-Core Version:    0.6.0
 */
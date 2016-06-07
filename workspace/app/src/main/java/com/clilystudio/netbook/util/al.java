package com.clilystudio.netbook.util;

import android.view.View;
import android.widget.BaseAdapter;
import android.widget.TextView;

public abstract class al extends BaseAdapter
{
  private ar a = new ar();

  protected final View a(int paramInt, boolean paramBoolean)
  {
    View localView = this.a.a[paramInt];
    if (localView != null)
    {
      if (!paramBoolean)
        break label35;
      if (8 != localView.getVisibility())
        localView.setVisibility(8);
    }
    label35: 
    do
      return localView;
    while (localView.getVisibility() == 0);
    localView.setVisibility(0);
    return localView;
  }

  protected final View a(View paramView, int[] paramArrayOfInt)
  {
    ar localar = this.a;
    View[] arrayOfView = new View[paramArrayOfInt.length];
    for (int i = 0; i < paramArrayOfInt.length; i++)
      arrayOfView[i] = paramView.findViewById(paramArrayOfInt[i]);
    paramView.setTag(arrayOfView);
    localar.a = arrayOfView;
    return paramView;
  }

  protected final TextView a(int paramInt, CharSequence paramCharSequence)
  {
    TextView localTextView = (TextView)this.a.a[paramInt];
    localTextView.setText(paramCharSequence);
    return localTextView;
  }

  protected final <T> T a(int paramInt, Class<T> paramClass)
  {
    return this.a.a[paramInt];
  }

  protected final void a(View paramView)
  {
    this.a.a = ((View[])paramView.getTag());
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.util.al
 * JD-Core Version:    0.6.0
 */
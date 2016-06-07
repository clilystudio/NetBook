package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory;
import android.view.View;

class LayoutInflaterCompatBase$FactoryWrapper
  implements LayoutInflater.Factory
{
  final LayoutInflaterFactory mDelegateFactory;

  LayoutInflaterCompatBase$FactoryWrapper(LayoutInflaterFactory paramLayoutInflaterFactory)
  {
    this.mDelegateFactory = paramLayoutInflaterFactory;
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.mDelegateFactory.onCreateView(null, paramString, paramContext, paramAttributeSet);
  }

  public String toString()
  {
    return getClass().getName() + "{" + this.mDelegateFactory + "}";
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.LayoutInflaterCompatBase.FactoryWrapper
 * JD-Core Version:    0.6.0
 */
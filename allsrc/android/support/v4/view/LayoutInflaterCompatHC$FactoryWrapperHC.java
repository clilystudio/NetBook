package android.support.v4.view;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater.Factory2;
import android.view.View;

class LayoutInflaterCompatHC$FactoryWrapperHC extends LayoutInflaterCompatBase.FactoryWrapper
  implements LayoutInflater.Factory2
{
  LayoutInflaterCompatHC$FactoryWrapperHC(LayoutInflaterFactory paramLayoutInflaterFactory)
  {
    super(paramLayoutInflaterFactory);
  }

  public View onCreateView(View paramView, String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    return this.mDelegateFactory.onCreateView(paramView, paramString, paramContext, paramAttributeSet);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.LayoutInflaterCompatHC.FactoryWrapperHC
 * JD-Core Version:    0.6.0
 */
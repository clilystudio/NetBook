package android.support.v4.view;

import android.view.LayoutInflater;

class LayoutInflaterCompatBase
{
  static void setFactory(LayoutInflater paramLayoutInflater, LayoutInflaterFactory paramLayoutInflaterFactory)
  {
    if (paramLayoutInflaterFactory != null);
    for (LayoutInflaterCompatBase.FactoryWrapper localFactoryWrapper = new LayoutInflaterCompatBase.FactoryWrapper(paramLayoutInflaterFactory); ; localFactoryWrapper = null)
    {
      paramLayoutInflater.setFactory(localFactoryWrapper);
      return;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     android.support.v4.view.LayoutInflaterCompatBase
 * JD-Core Version:    0.6.0
 */
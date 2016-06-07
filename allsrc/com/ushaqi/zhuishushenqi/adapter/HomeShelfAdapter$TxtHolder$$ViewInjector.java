package com.ushaqi.zhuishushenqi.adapter;

import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.ButterKnife.Finder;

public class HomeShelfAdapter$TxtHolder$$ViewInjector
{
  public static void inject(ButterKnife.Finder paramFinder, HomeShelfAdapter.TxtHolder paramTxtHolder, Object paramObject)
  {
    paramTxtHolder.title = ((TextView)paramFinder.findRequiredView(paramObject, 2131492936, "field 'title'"));
    paramTxtHolder.desc = ((TextView)paramFinder.findRequiredView(paramObject, 2131493481, "field 'desc'"));
    paramTxtHolder.top = paramFinder.findRequiredView(paramObject, 2131492978, "field 'top'");
    paramTxtHolder.check = ((CheckBox)paramFinder.findRequiredView(paramObject, 2131492900, "field 'check'"));
  }

  public static void reset(HomeShelfAdapter.TxtHolder paramTxtHolder)
  {
    paramTxtHolder.title = null;
    paramTxtHolder.desc = null;
    paramTxtHolder.top = null;
    paramTxtHolder.check = null;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter.TxtHolder..ViewInjector
 * JD-Core Version:    0.6.0
 */
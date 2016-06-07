package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.content.Context;
import android.support.v7.widget.ah;
import android.support.v7.widget.ay;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TableLayout;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.model.UgcFilterRoot.FilterGroup;
import com.ushaqi.zhuishushenqi.widget.UgcFilterTextView;

final class ak extends ah
{
  boolean a = false;
  LayoutInflater b;
  private UgcFilterRoot.FilterGroup[] d;

  public ak(UGCMainActivity paramUGCMainActivity, Context paramContext, UgcFilterRoot.FilterGroup[] paramArrayOfFilterGroup)
  {
    this.b = LayoutInflater.from(paramContext);
    this.d = paramArrayOfFilterGroup;
  }

  public final int a()
  {
    if (this.a);
    for (int i = 1; ; i = 0)
      return i + this.d.length;
  }

  public final int a(int paramInt)
  {
    if ((paramInt == 0) && (this.a))
      return 0;
    return 1;
  }

  public final ay a(ViewGroup paramViewGroup, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 0:
      return new an(this, this.b.inflate(2130903403, paramViewGroup, false));
    case 1:
    }
    return new al(this, this.b.inflate(2130903406, paramViewGroup, false));
  }

  public final void a(ay paramay, int paramInt)
  {
    an localan;
    if ((paramInt == 0) && (this.a))
    {
      localan = (an)paramay;
      String str2 = this.c.getString(2131034561);
      localan.j = str2;
      if (UGCMainActivity.j(localan.k.c).equals(str2))
      {
        localan.i.setTextColor(android.support.design.widget.am.a(localan.k.c, 2130771972));
        localan.i.setBackgroundResource(android.support.design.widget.am.b(localan.k.c, 2130771998));
      }
    }
    label412: 
    while (true)
    {
      return;
      localan.i.setTextColor(android.support.design.widget.am.a(localan.k.c, 16842808));
      localan.i.setBackgroundResource(android.support.design.widget.am.b(localan.k.c, 2130771974));
      return;
      al localal = (al)paramay;
      UgcFilterRoot.FilterGroup[] arrayOfFilterGroup = this.d;
      int i;
      int j;
      String[] arrayOfString;
      if (this.a)
      {
        i = 1;
        UgcFilterRoot.FilterGroup localFilterGroup = arrayOfFilterGroup[(paramInt - i)];
        if (localFilterGroup == null)
          continue;
        localal.i.setText(localFilterGroup.getName());
        j = (-1 + (4 + localFilterGroup.getTags().length)) / 4;
        arrayOfString = localFilterGroup.getTags();
        localal.j.removeAllViews();
      }
      for (int k = 0; ; k++)
      {
        if (k >= j)
          break label412;
        ViewGroup localViewGroup = (ViewGroup)localal.k.b.inflate(2130903407, localal.j, false);
        int m = 0;
        while (true)
          if (m < Math.min(4, arrayOfString.length - (k << 2)))
          {
            UgcFilterTextView localUgcFilterTextView = (UgcFilterTextView)localViewGroup.getChildAt(m);
            String str1 = arrayOfString[(m + (k << 2))];
            localUgcFilterTextView.setVisibility(0);
            localUgcFilterTextView.setText(str1);
            localUgcFilterTextView.setSelected(UGCMainActivity.j(localal.k.c).equals(localUgcFilterTextView.a()));
            localUgcFilterTextView.setOnClickListener(new am(localal, str1));
            m++;
            continue;
            i = 0;
            break;
          }
        if (arrayOfString.length - (k << 2) < 4)
          for (int n = arrayOfString.length - (k << 2); n < 4; n++)
            localViewGroup.getChildAt(n).setVisibility(4);
        localal.j.addView(localViewGroup);
      }
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.ak
 * JD-Core Version:    0.6.0
 */
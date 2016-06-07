package com.ushaqi.zhuishushenqi.ui.ugcbook;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.db.BookReadRecord;
import com.ushaqi.zhuishushenqi.widget.CoverView;
import java.util.List;

public final class X extends BaseAdapter
{
  private LayoutInflater b;
  private List<BookReadRecord> c;
  private boolean d = false;

  public X(LayoutInflater paramLayoutInflater, List<BookReadRecord> paramList)
  {
    this.b = paramList;
    Object localObject;
    this.c = localObject;
  }

  public final int getCount()
  {
    return this.c.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.c.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    Z localZ;
    if (paramView == null)
    {
      localZ = new Z(this);
      paramView = this.b.inflate(2130903318, null);
      localZ.a = ((TextView)paramView.findViewById(2131492936));
      localZ.b = ((TextView)paramView.findViewById(2131493481));
      localZ.c = ((CoverView)paramView.findViewById(2131493604));
      localZ.d = ((CheckBox)paramView.findViewById(2131492900));
      paramView.setTag(localZ);
    }
    CheckBox localCheckBox;
    while (true)
    {
      BookReadRecord localBookReadRecord = (BookReadRecord)this.c.get(paramInt);
      localZ.a.setText(localBookReadRecord.getTitle());
      localZ.c.setImageUrl(localBookReadRecord.getFullCover(), 2130837766);
      localZ.b.setText(localBookReadRecord.buildDesc());
      localCheckBox = localZ.d;
      this.d = true;
      if (UGCGuideSelectBookActivity.c(this.a).length > paramInt)
        break;
      boolean[] arrayOfBoolean = new boolean[paramInt + 1];
      int i = 0;
      while (true)
        if (i < UGCGuideSelectBookActivity.c(this.a).length)
        {
          arrayOfBoolean[i] = UGCGuideSelectBookActivity.c(this.a)[i];
          i++;
          continue;
          localZ = (Z)paramView.getTag();
          break;
        }
      UGCGuideSelectBookActivity.a(this.a, arrayOfBoolean);
    }
    localCheckBox.setChecked(UGCGuideSelectBookActivity.c(this.a)[paramInt]);
    UGCGuideSelectBookActivity.a(this.a, paramInt);
    this.d = false;
    localCheckBox.setOnCheckedChangeListener(new Y(this, paramInt));
    return paramView;
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.ugcbook.X
 * JD-Core Version:    0.6.0
 */
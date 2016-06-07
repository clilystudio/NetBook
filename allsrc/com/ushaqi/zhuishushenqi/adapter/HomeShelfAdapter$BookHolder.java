package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.ushaqi.zhuishushenqi.widget.BookShelfFlagView;
import com.ushaqi.zhuishushenqi.widget.CoverLoadingLayer;
import com.ushaqi.zhuishushenqi.widget.CoverView;

class HomeShelfAdapter$BookHolder
{

  @InjectView(2131492900)
  CheckBox check;

  @InjectView(2131493604)
  CoverView cover;

  @InjectView(2131492906)
  CoverLoadingLayer coverLoadingLayer;

  @InjectView(2131493481)
  TextView desc;

  @InjectView(2131493754)
  BookShelfFlagView flag;

  @InjectView(2131492936)
  TextView title;

  @InjectView(2131492978)
  View top;

  HomeShelfAdapter$BookHolder(View paramView)
  {
    ButterKnife.inject(this, paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter.BookHolder
 * JD-Core Version:    0.6.0
 */
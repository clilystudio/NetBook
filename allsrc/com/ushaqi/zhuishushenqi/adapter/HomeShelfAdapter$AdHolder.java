package com.ushaqi.zhuishushenqi.adapter;

import android.view.View;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.ushaqi.zhuishushenqi.ui.SmartImageView;
import com.ushaqi.zhuishushenqi.widget.BookShelfFlagView;

class HomeShelfAdapter$AdHolder
{

  @InjectView(2131493604)
  SmartImageView cover;

  @InjectView(2131493481)
  TextView desc;

  @InjectView(2131493754)
  BookShelfFlagView flag;

  @InjectView(2131492936)
  TextView title;

  HomeShelfAdapter$AdHolder(View paramView)
  {
    ButterKnife.inject(this, paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.adapter.HomeShelfAdapter.AdHolder
 * JD-Core Version:    0.6.0
 */
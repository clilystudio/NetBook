package com.clilystudio.netbook.adapter;

import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.widget.BookShelfFlagView;
import com.clilystudio.netbook.widget.CoverLoadingLayer;
import com.clilystudio.netbook.widget.CoverView;

class HomeShelfAdapter$AlbumHolder
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

  HomeShelfAdapter$AlbumHolder(View paramView)
  {
    ButterKnife.inject(this, paramView);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.adapter.HomeShelfAdapter.AlbumHolder
 * JD-Core Version:    0.6.0
 */
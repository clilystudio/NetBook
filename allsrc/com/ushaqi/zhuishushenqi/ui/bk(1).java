package com.ushaqi.zhuishushenqi.ui;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import com.umeng.a.b;
import com.ushaqi.zhuishushenqi.adapter.v;
import com.ushaqi.zhuishushenqi.model.MhdInfo;

final class bk
  implements AdapterView.OnItemClickListener
{
  bk(MhdListActivity paramMhdListActivity)
  {
  }

  public final void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    MhdInfo localMhdInfo = (MhdInfo)MhdListActivity.b(this.a).getItem(paramInt);
    if (localMhdInfo != null)
      MhdListActivity.a(this.a, localMhdInfo.getBigbookid());
    b.a(this.a, "mhd_list_item_click");
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.bk
 * JD-Core Version:    0.6.0
 */
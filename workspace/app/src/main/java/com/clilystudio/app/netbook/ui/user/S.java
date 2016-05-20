package com.clilystudio.app.netbook.ui.user;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.clilystudio.app.netbook.model.PayConsumeRecord.Order;
import com.clilystudio.app.netbook.model.PayConsumeRecord.PayType;
import com.clilystudio.app.netbook.util.t;
import com.clilystudio.app.netbook.widget.PayRecordCollapseItem;
import java.util.ArrayList;
import java.util.List;

final class S extends BaseAdapter
{
  private LayoutInflater b;
  private List<PayConsumeRecord.Order> c;
  private boolean[] d;

  public S(PayConsumeActivity paramPayConsumeActivity, LayoutInflater paramLayoutInflater)
  {
    this.b = paramLayoutInflater;
    this.c = new ArrayList();
    this.d = new boolean[0];
  }

  public final void a(List<PayConsumeRecord.Order> paramList)
  {
    this.c.clear();
    this.c.addAll(paramList);
    this.d = new boolean[this.c.size()];
    notifyDataSetChanged();
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
    View localView1;
    Y localY;
    PayConsumeRecord.Order localOrder;
    PayConsumeRecord.PayType localPayType;
    label309: label364: int i;
    if (paramView == null)
    {
      localView1 = this.b.inflate(2130903249, paramViewGroup, false);
      localY = new Y(this);
      localY.a = ((TextView)localView1.findViewById(2131493639));
      localY.b = ((TextView)localView1.findViewById(2131493640));
      localY.c = ((TextView)localView1.findViewById(2131493641));
      localY.d = ((TextView)localView1.findViewById(2131493642));
      localY.e = ((TextView)localView1.findViewById(2131493644));
      localY.f = ((TextView)localView1.findViewById(2131493646));
      localY.g = localView1.findViewById(2131493645);
      localY.h = localView1.findViewById(2131493578);
      localY.i = ((ImageView)localView1.findViewById(2131493643));
      localView1.setTag(localY);
      localOrder = (PayConsumeRecord.Order)this.c.get(paramInt);
      localPayType = localOrder.getPayType();
      String str1 = localOrder.getBookName();
      if (str1.length() > 8)
        str1 = str1.substring(0, 8) + "...";
      localY.a.setText(str1);
      localY.e.setText(localOrder.getUseCurrency());
      if (localOrder.getUseVoucher() <= 0)
        break label457;
      localY.g.setVisibility(0);
      localY.f.setText(localOrder.getUseVoucher());
      localY.d.setText(t.e(localOrder.getCreated()));
      localY.c.setText(localOrder.getPayTypeString());
      if ((localPayType != PayConsumeRecord.PayType.WHOLE_BOOK) && (localPayType != PayConsumeRecord.PayType.MULTIPLE_CHAPTERS))
        break label470;
      localY.b.setVisibility(8);
      if (localPayType != PayConsumeRecord.PayType.MULTIPLE_CHAPTERS)
        break label612;
      ((PayRecordCollapseItem)localView1).a(localOrder.getTitles(), paramInt);
      View localView2 = localY.h;
      if (this.d[paramInt] == 0)
        break label605;
      i = 0;
      label405: localView2.setVisibility(i);
    }
    while (true)
    {
      ImageView localImageView = localY.i;
      localImageView.setOnClickListener(new T(this, paramInt, localOrder, localImageView, localView1));
      return localView1;
      localY = (Y)paramView.getTag();
      localView1 = paramView;
      break;
      label457: localY.g.setVisibility(8);
      break label309;
      label470: localY.b.setVisibility(0);
      if (localPayType == PayConsumeRecord.PayType.VIP_SERVICE)
      {
        localY.a.setText(localOrder.getBookName());
        localY.c.setText(localOrder.getChapterTitle());
        localY.b.setText("");
        localY.d.setText("");
        break label364;
      }
      localY.a.setVisibility(0);
      String str2 = localOrder.getChapterTitle();
      if (str2.length() > 10)
        str2 = str2.substring(0, 10) + "...";
      localY.b.setText(str2);
      break label364;
      label605: i = 8;
      break label405;
      label612: localY.h.setVisibility(8);
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.S
 * JD-Core Version:    0.6.2
 */
package com.clilystudio.app.netbook.ui.user;

import android.content.res.Resources;
import android.os.Bundle;
import com.clilystudio.app.netbook.am_CommonUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.clilystudio.app.netbook.model.PayVoucherRecord.Voucher;
import com.clilystudio.app.netbook.util.t;
import java.util.ArrayList;
import java.util.List;

final class ag extends BaseAdapter
{
  private List<PayVoucherRecord.Voucher> a;
  private LayoutInflater b;
  private int c;
  private int d;
  private String e;

  public ag(PayVoucherFragment paramPayVoucherFragment, LayoutInflater paramLayoutInflater)
  {
    this.b = paramLayoutInflater;
    this.a = new ArrayList();
    switch (paramPayVoucherFragment.getArguments().getInt("tag_index_key"))
    {
    default:
      return;
    case 0:
      this.c = am_CommonUtils.b(paramPayVoucherFragment.getActivity(), 2130772009);
      this.d = 2131427467;
      this.e = "可\n使\n用";
      return;
    case 1:
      this.c = am_CommonUtils.b(paramPayVoucherFragment.getActivity(), 2130772008);
      this.d = 2131427466;
      this.e = "已\n用\n完";
      return;
    case 2:
    }
    this.c = am_CommonUtils.b(paramPayVoucherFragment.getActivity(), 2130772008);
    this.d = 2131427466;
    this.e = "已\n过\n期";
  }

  public final void a(List<PayVoucherRecord.Voucher> paramList)
  {
    this.a = paramList;
    notifyDataSetChanged();
  }

  public final int getCount()
  {
    return this.a.size();
  }

  public final Object getItem(int paramInt)
  {
    return this.a.get(paramInt);
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    PayVoucherRecord.Voucher localVoucher = (PayVoucherRecord.Voucher)this.a.get(paramInt);
    ah localah1;
    if (paramView == null)
    {
      localah1 = new ah(this);
      paramView = this.b.inflate(2130903320, null);
      localah1.a = ((TextView)paramView.findViewById(2131493794));
      localah1.b = ((TextView)paramView.findViewById(2131493797));
      localah1.c = ((TextView)paramView.findViewById(2131493795));
      localah1.d = ((TextView)paramView.findViewById(2131493796));
      localah1.e = ((TextView)paramView.findViewById(2131493793));
      paramView.setTag(localah1);
    }
    for (ah localah2 = localah1; ; localah2 = (ah)paramView.getTag())
    {
      localah2.a.setText(localVoucher.getAmount());
      localah2.b.setText(localVoucher.getFrom());
      localah2.c.setText("余额：" + localVoucher.getBalance());
      localah2.d.setText("有效期至" + t.c(localVoucher.getExpired()));
      localah2.e.setText(this.e);
      localah2.e.setTextColor(this.f.getResources().getColor(this.d));
      localah2.e.setBackgroundResource(this.c);
      return paramView;
    }
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.ag
 * JD-Core Version:    0.6.2
 */
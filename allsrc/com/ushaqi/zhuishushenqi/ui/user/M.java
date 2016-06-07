package com.ushaqi.zhuishushenqi.ui.user;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.ushaqi.zhuishushenqi.model.PayChargeRecord.Order;
import java.text.DecimalFormat;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

final class M extends BaseAdapter
{
  List<PayChargeRecord.Order> a;

  public M(List<PayChargeRecord.Order> paramList)
  {
    Object localObject;
    this.a = localObject;
  }

  private static String a(Date paramDate, String paramString)
  {
    if (paramDate == null)
      return "";
    return new SimpleDateFormat(paramString).format(paramDate);
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
    PayChargeRecord.Order localOrder = (PayChargeRecord.Order)this.a.get(paramInt);
    N localN1;
    if (paramView == null)
    {
      localN1 = new N(this);
      paramView = LayoutInflater.from(this.b).inflate(2130903294, null);
      localN1.a = paramView.findViewById(2131493721);
      localN1.b = ((ImageView)paramView.findViewById(2131493722));
      localN1.c = ((TextView)paramView.findViewById(2131493725));
      localN1.e = ((TextView)paramView.findViewById(2131493724));
      localN1.f = ((TextView)paramView.findViewById(2131493723));
      localN1.d = ((TextView)paramView.findViewById(2131493726));
      localN1.g = ((TextView)paramView.findViewById(2131493720));
      paramView.setTag(localN1);
    }
    for (N localN2 = localN1; localOrder.getPayType().equals("time_flag"); localN2 = (N)paramView.getTag())
    {
      localN2.a.setVisibility(8);
      localN2.g.setVisibility(0);
      localN2.g.setText(localOrder.getTimeflag());
      return paramView;
    }
    localN2.a.setVisibility(0);
    localN2.g.setVisibility(8);
    localN2.e.setText(localOrder.getChargeString());
    TextView localTextView = localN2.f;
    StringBuilder localStringBuilder = new StringBuilder();
    float f = localOrder.getPrice();
    localTextView.setText(new DecimalFormat("0.00").format(f) + "元");
    int i = 2130838030;
    String str = localOrder.getPayType();
    int j;
    switch (str.hashCode())
    {
    default:
      j = -1;
      label347: switch (j)
      {
      default:
      case 0:
      case 1:
      case 2:
      }
    case -1414960566:
    case 1825929990:
    case -199281814:
    }
    while (true)
    {
      localN2.c.setText(a(localOrder.getCreated(), "MM-dd"));
      localN2.d.setText(a(localOrder.getCreated(), "mm:ss"));
      localN2.b.setImageResource(i);
      return paramView;
      if (!str.equals("alipay"))
        break;
      j = 0;
      break label347;
      if (!str.equals("weixinpay"))
        break;
      j = 1;
      break label347;
      if (!str.equals("youyifupay"))
        break;
      j = 2;
      break label347;
      i = 2130838031;
      continue;
      i = 2130838045;
      continue;
      i = 2130838040;
    }
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.user.M
 * JD-Core Version:    0.6.0
 */
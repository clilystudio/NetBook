package com.clilystudio.app.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.TextView;
import com.clilystudio.app.netbook.d;
import com.clilystudio.app.netbook.model.PayChargeRecord.Order;
import com.clilystudio.app.netbook.ui.BaseLoadingActivity;
import com.clilystudio.app.netbook.util.t;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

public class PayChargeActivity extends BaseLoadingActivity
{
  private M a;
  private View b;
  private ScrollLoadListView c;
  private List<PayChargeRecord.Order> e = new ArrayList();
  private List<PayChargeRecord.Order> f = new ArrayList();
  private String g;
  private av h = new L(this);

  private int a(int paramInt, String paramString, Date[] paramArrayOfDate)
  {
    if (paramInt >= this.f.size())
      paramInt = 2147483647;
    while (true)
    {
      return paramInt;
      if (t.a(((PayChargeRecord.Order)this.f.get(paramInt)).getCreated(), paramArrayOfDate))
      {
        PayChargeRecord.Order localOrder = new PayChargeRecord.Order();
        localOrder.setPayType("time_flag");
        localOrder.setTimeflag(paramString);
        this.f.add(paramInt, localOrder);
        paramInt++;
      }
      while ((paramInt < this.f.size()) && (t.a(((PayChargeRecord.Order)this.f.get(paramInt)).getCreated(), paramArrayOfDate)))
        paramInt++;
    }
  }

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d().a(paramContext, PayChargeActivity.class).a("token_key", paramString1).a("title_key", paramString2).a();
  }

  protected final void b()
  {
    i();
    O localO = new O(this, (byte)0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.g;
    localO.b(arrayOfString);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903386);
    TextView localTextView = (TextView)findViewById(2131493104);
    localTextView.setGravity(1);
    localTextView.setText("您还没有充值记录");
    localTextView.setCompoundDrawablesWithIntrinsicBounds(null, getResources().getDrawable(2130838029), null, null);
    localTextView.setTextSize(2, getResources().getDimension(2131099793) / 3.0F);
    localTextView.setCompoundDrawablePadding((int)getResources().getDimension(2131099721));
    b(getIntent().getStringExtra("title_key"));
    this.g = getIntent().getStringExtra("token_key");
    this.b = LayoutInflater.from(this).inflate(2130903325, null);
    this.b.setVisibility(8);
    this.c = ((ScrollLoadListView)findViewById(2131493981));
    this.c.addFooterView(this.b);
    this.c.setDividerHeight(0);
    this.c.setOnItemClickListener(new K(this));
    this.a = new M(this, this.e);
    this.c.setAdapter(this.a);
    b();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.PayChargeActivity
 * JD-Core Version:    0.6.2
 */
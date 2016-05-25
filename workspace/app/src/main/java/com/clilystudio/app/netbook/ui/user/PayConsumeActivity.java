package com.clilystudio.app.netbook.ui.user;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.clilystudio.app.netbook.d_IntentFactory;
import com.clilystudio.app.netbook.model.PayConsumeRecord.Order;
import com.clilystudio.app.netbook.ui.BaseLoadingActivity;
import com.clilystudio.app.netbook.widget.ScrollLoadListView;
import com.clilystudio.app.netbook.widget.av;
import java.util.ArrayList;
import java.util.List;

public class PayConsumeActivity extends BaseLoadingActivity
{
  private S a;
  private View b;
  private RelativeLayout c;
  private ScrollLoadListView e;
  private List<PayConsumeRecord.Order> f = new ArrayList();
  private String g;
  private av h = new Q(this);

  public static Intent a(Context paramContext, String paramString1, String paramString2)
  {
    return new d_IntentFactory().a_setClass(paramContext, PayConsumeActivity.class).a_putExtra("token_key", paramString1).a_putExtra("title_key", paramString2).a();
  }

  protected final void b()
  {
    i();
    Z localZ = new Z(this, (byte)0);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = this.g;
    localZ.b(arrayOfString);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a(2130903386);
    this.c = ((RelativeLayout)findViewById(2131493136));
    TextView localTextView = (TextView)findViewById(2131493104);
    localTextView.setGravity(1);
    localTextView.setText("您还没有消费记录");
    localTextView.setCompoundDrawablesWithIntrinsicBounds(null, getResources().getDrawable(2130838029), null, null);
    localTextView.setTextSize(2, getResources().getDimension(2131099793) / 3.0F);
    localTextView.setCompoundDrawablePadding((int)getResources().getDimension(2131099721));
    b(getIntent().getStringExtra("title_key"));
    this.g = getIntent().getStringExtra("token_key");
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    this.b = localLayoutInflater.inflate(2130903325, null);
    this.b.setVisibility(8);
    this.e = ((ScrollLoadListView)findViewById(2131493981));
    this.e.addFooterView(this.b);
    this.e.setDividerHeight(0);
    this.e.setOnScrollListener(new P(this));
    this.a = new S(this, localLayoutInflater);
    this.e.setAdapter(this.a);
    b();
  }
}

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.user.PayConsumeActivity
 * JD-Core Version:    0.6.2
 */
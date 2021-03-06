package com.ushaqi.zhuishushenqi.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.Window;
import android.view.inputmethod.InputMethodManager;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import com.arcsoft.hpay100.a.a;
import com.ushaqi.zhuishushenqi.adapter.E;
import com.ushaqi.zhuishushenqi.c;
import com.ushaqi.zhuishushenqi.d;
import com.ushaqi.zhuishushenqi.util.e;
import com.ushaqi.zhuishushenqi.widget.AutoFlowView;
import com.ushaqi.zhuishushenqi.widget.SearchEditText;
import com.ushaqi.zhuishushenqi.widget.SearchFixListView;
import java.util.ArrayList;
import java.util.List;

public class SearchActivity extends BaseActivity
  implements View.OnClickListener
{
  private InputMethodManager a;
  private String b;
  private int c;
  private SearchEditText e;
  private View f;
  private View g;
  private ListView h;
  private SearchFixListView i;
  private View j;
  private View k;
  private E l;
  private View m;
  private View n;
  private String o;
  private boolean p = false;
  private RelativeLayout q;
  private AutoFlowView r;
  private TextView s;
  private View t;
  private View u;
  private ListView v;
  private SearchActivity.SearchHistoryAdapter w;
  private List<String> x;

  public static Intent a(Context paramContext)
  {
    return a(paramContext, 1);
  }

  public static Intent a(Context paramContext, int paramInt)
  {
    return new d().a(paramContext, SearchActivity.class).a("search_mode", paramInt).a();
  }

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.j.setVisibility(8);
      this.k.setVisibility(8);
      this.h.setVisibility(0);
      return;
    case 0:
      this.j.setVisibility(0);
      this.k.setVisibility(8);
      this.h.setVisibility(8);
      return;
    case 3:
      this.j.setVisibility(8);
      this.k.setVisibility(0);
      this.h.setVisibility(8);
      return;
    case 2:
    }
    this.j.setVisibility(8);
    this.k.setVisibility(8);
    this.h.setVisibility(8);
  }

  private void a(boolean paramBoolean)
  {
    this.u.setClickable(paramBoolean);
    this.u.setEnabled(paramBoolean);
    this.u.setFocusable(paramBoolean);
  }

  private void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    this.i.setVisibility(8);
    this.b = this.e.getText().toString().trim();
    String str1 = this.b;
    int i1 = -1;
    Intent localIntent;
    switch (str1.hashCode())
    {
    default:
      localIntent = null;
      switch (i1)
      {
      default:
        label80: if ((this.b != null) && (localIntent != null))
          startActivity(localIntent);
      case 0:
      }
    case 229825679:
    }
    while (true)
    {
      return;
      if (!str1.equals("//openwebview"))
        break;
      i1 = 0;
      break;
      localIntent = new Intent(this, SecretOpWebActivity.class);
      break label80;
      this.p = true;
      String str2 = this.b;
      if (this.x.contains(str2))
        this.x.remove(str2);
      if (this.x.size() >= 6)
        this.x.remove(-1 + this.x.size());
      this.x.add(0, str2);
      this.w.notifyDataSetChanged();
      a.a(this.x, c.e, "search_history.txt");
      a(true);
      g();
      if (a.t(this))
      {
        a(0);
        if (paramBoolean2)
        {
          bP localbP = new bP(this, 0);
          String[] arrayOfString1 = new String[1];
          arrayOfString1[0] = this.b;
          localbP.b(arrayOfString1);
        }
      }
      while ((paramBoolean1) && (this.m != null))
      {
        this.m.setVisibility(0);
        return;
        bR localbR = new bR(this, 0);
        String[] arrayOfString2 = new String[1];
        arrayOfString2[0] = this.b;
        localbR.b(arrayOfString2);
        continue;
        e.a(this, 2131034418);
      }
    }
  }

  private void b()
  {
    Intent localIntent = new Intent(this, CustomSearchActivity.class);
    localIntent.putExtra("AddBookKey", this.b);
    startActivity(localIntent);
  }

  private void f()
  {
    this.n.setVisibility(0);
    getWindow().setSoftInputMode(21);
    this.e.requestFocus();
  }

  private void g()
  {
    this.n.setVisibility(8);
    this.e.clearFocus();
    if (this.a == null)
      this.a = ((InputMethodManager)getSystemService("input_method"));
    this.a.hideSoftInputFromWindow(this.e.getWindowToken(), 0);
    getWindow().setSoftInputMode(2);
  }

  public void onBackPressed()
  {
    if (this.i.getVisibility() == 0);
    for (int i1 = 1; i1 != 0; i1 = 0)
    {
      this.i.setVisibility(8);
      return;
    }
    super.onBackPressed();
  }

  public void onClick(View paramView)
  {
    switch (paramView.getId())
    {
    default:
      return;
    case 2131493016:
      a(true, true);
      g();
      return;
    case 2131493015:
      this.b = "";
      this.e.setTextByCode(this.b);
      f();
      return;
    case 2131493983:
      b();
      return;
    case 2131493982:
      b();
      return;
    case 2131493013:
    }
    finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903127);
    ButterKnife.inject(this);
    Intent localIntent = getIntent();
    this.c = localIntent.getIntExtra("search_mode", 1);
    if (this.c == 2)
      this.b = localIntent.getStringExtra("keyword");
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    View localView1 = localLayoutInflater.inflate(2130903042, null, false);
    localView1.findViewById(2131493013).setOnClickListener(this);
    setCustomActionBar(localView1);
    SearchActivity.SearchPromptAdapter localSearchPromptAdapter = new SearchActivity.SearchPromptAdapter(this);
    this.i = ((SearchFixListView)findViewById(2131493193));
    this.i.setAdapter(localSearchPromptAdapter);
    this.i.setOnItemClickListener(localSearchPromptAdapter);
    this.e = ((SearchEditText)localView1.findViewById(2131493014));
    this.e.setOnUserInputListener(new bD(this, localSearchPromptAdapter));
    this.f = localView1.findViewById(2131493016);
    this.g = localView1.findViewById(2131493015);
    this.j = findViewById(2131493085);
    this.k = findViewById(2131493184);
    View localView2 = findViewById(2131493982);
    this.n = findViewById(2131493183);
    this.f.setOnClickListener(this);
    this.g.setOnClickListener(this);
    localView2.setOnClickListener(this);
    this.f.setEnabled(false);
    this.h = ((ListView)findViewById(2131493185));
    if (this.c == 1)
    {
      this.m = localLayoutInflater.inflate(2130903388, this.h, false);
      this.h.addHeaderView(this.m, null, false);
      this.m.setOnClickListener(this);
    }
    this.l = new E(localLayoutInflater);
    this.h.setAdapter(this.l);
    this.h.setOnItemClickListener(new bE(this));
    if (paramBundle != null)
    {
      this.b = paramBundle.getString("saved_keyword");
      if (this.b != null)
        this.e.setTextByCode(this.b);
    }
    this.e.setOnEditorActionListener(new bJ(this));
    this.e.addTextChangedListener(new bK(this));
    this.e.setOnFocusChangeListener(new bL(this));
    this.t = findViewById(2131493186);
    this.t.setOnTouchListener(new bF(this));
    this.u = findViewById(2131493191);
    this.u.setOnClickListener(new bG(this));
    this.v = ((ListView)findViewById(2131493192));
    this.x = ((List)a.k(c.e, "search_history.txt"));
    if (this.x == null)
      this.x = new ArrayList();
    if (this.x.size() == 0)
      a(false);
    this.w = new SearchActivity.SearchHistoryAdapter(this);
    this.v.setAdapter(this.w);
    this.v.setOnItemClickListener(this.w);
    if (this.c != 1)
    {
      this.e.setTextByCode(this.b);
      a(false, false);
      g();
    }
    while (true)
    {
      this.q = ((RelativeLayout)findViewById(2131493187));
      this.r = ((AutoFlowView)findViewById(2131493190));
      this.s = ((TextView)findViewById(2131493189));
      if ((a.k(c.e, "search_hotword.txt") != null) && (a.a(this, "search_hot_words_date", 0) != 0))
        break;
      a.b(this, "search_hot_words_date", 1);
      new bM(this, 0).b(new String[0]);
      return;
      f();
    }
    List localList = (List)a.k(c.e, "search_hotword.txt");
    this.q.setVisibility(0);
    this.r.setWords(localList);
    this.r.setOnItemClickListener(new bH(this));
    this.s.setOnClickListener(new bI(this));
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    if (this.b != null)
      paramBundle.putString("saved_keyword", this.b);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.ushaqi.zhuishushenqi.ui.SearchActivity
 * JD-Core Version:    0.6.0
 */
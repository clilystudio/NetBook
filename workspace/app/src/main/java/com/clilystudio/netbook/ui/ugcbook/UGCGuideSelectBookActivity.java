package com.clilystudio.netbook.ui.ugcbook;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.Button;
import android.widget.ListView;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import com.clilystudio.netbook.ui.BaseActivity;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class UGCGuideSelectBookActivity extends BaseActivity
{
  private ListView a;
  private View b;
  private View c;
  private Button e;
  private Button f;
  private X g;
  private List<BookReadRecord> h;
  private List<BookReadRecord> i;
  private boolean[] j;

  public final void a(int paramInt)
  {
    boolean[] arrayOfBoolean = this.j;
    if (this.j[paramInt] == 0);
    for (int k = 1; ; k = 0)
    {
      arrayOfBoolean[paramInt] = k;
      this.g.notifyDataSetChanged();
      return;
    }
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903137);
    b("书架添加");
    this.h = BookReadRecord.getAllNotDeleted();
    this.a = ((ListView)findViewById(2131493226));
    this.e = ((Button)findViewById(2131493228));
    this.f = ((Button)findViewById(2131493229));
    this.b = findViewById(2131493100);
    this.c = findViewById(2131493227);
    if (this.h.size() == 0)
    {
      this.b.setVisibility(0);
      this.a.setVisibility(8);
      this.c.setVisibility(8);
      return;
    }
    this.i = new ArrayList();
    this.j = new boolean[this.h.size()];
    UGCNewCollection localUGCNewCollection = e();
    if ((localUGCNewCollection != null) && (localUGCNewCollection.getBooks() != null))
    {
      List localList = localUGCNewCollection.getBooks();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = localList.iterator();
      while (localIterator.hasNext())
        localArrayList.add(((BookSummary)localIterator.next()).getId());
      for (int k = 0; k < this.h.size(); k++)
      {
        BookReadRecord localBookReadRecord = (BookReadRecord)this.h.get(k);
        if (!localArrayList.contains(localBookReadRecord.getBookId()))
          continue;
        this.i.add(localBookReadRecord);
        this.j[k] = true;
      }
    }
    LayoutInflater localLayoutInflater = LayoutInflater.from(this);
    this.g = new X(this, localLayoutInflater, this.h);
    this.a.setAdapter(this.g);
    this.a.setOnItemClickListener(new U(this));
    View localView = localLayoutInflater.inflate(2130903256, this.a, false);
    this.a.addFooterView(localView);
    this.e.setOnClickListener(new V(this));
    this.f.setOnClickListener(new W(this));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.UGCGuideSelectBookActivity
 * JD-Core Version:    0.6.0
 */
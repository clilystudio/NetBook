package com.clilystudio.netbook.ui.ugcbook;

import android.view.View;
import android.view.View.OnClickListener;
import com.arcsoft.hpay100.a.a;
import com.squareup.a.b;
import com.clilystudio.netbook.db.BookReadRecord;
import com.clilystudio.netbook.event.D;
import com.clilystudio.netbook.event.i;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.UGCNewCollection;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

final class W
  implements View.OnClickListener
{
  W(UGCGuideSelectBookActivity paramUGCGuideSelectBookActivity)
  {
  }

  public final void onClick(View paramView)
  {
    UGCNewCollection localUGCNewCollection = UGCGuideSelectBookActivity.a(this.a);
    ArrayList localArrayList1 = new ArrayList();
    Iterator localIterator = localUGCNewCollection.getBooks().iterator();
    while (localIterator.hasNext())
      localArrayList1.add(((BookSummary)localIterator.next()).getId());
    ArrayList localArrayList2 = new ArrayList();
    for (int i = 0; i < UGCGuideSelectBookActivity.b(this.a).size(); i++)
    {
      String str = ((BookReadRecord)UGCGuideSelectBookActivity.b(this.a).get(i)).getBookId();
      if (localArrayList1.contains(str))
        continue;
      localArrayList2.add(str);
    }
    String[] arrayOfString = (String[])a.a(localArrayList2, String.class);
    i.a().c(new D(arrayOfString));
    this.a.finish();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.ugcbook.W
 * JD-Core Version:    0.6.0
 */
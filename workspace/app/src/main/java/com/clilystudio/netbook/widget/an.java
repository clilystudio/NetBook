package com.clilystudio.netbook.widget;

import android.app.Activity;
import com.clilystudio.netbook.api.ApiService;
import com.clilystudio.netbook.db.PostAgreeRecord;
import com.clilystudio.netbook.model.Root;
import com.clilystudio.netbook.util.S;
import com.clilystudio.netbook.util.e;

final class an extends S<Root>
{
  private String a;
  private String b;

  private an(PostAgreeView paramPostAgreeView)
  {
  }

  protected final Root a(ApiService paramApiService, String[] paramArrayOfString)
  {
    this.a = paramArrayOfString[0];
    this.b = paramArrayOfString[1];
    return paramApiService.F(this.a, this.b);
  }

  protected final void a(Root paramRoot)
  {
    e.a((Activity)this.c.getContext(), "已同感");
    PostAgreeRecord.add(this.b, this.a);
  }

  protected final void b(Root paramRoot)
  {
    this.c.setOnClickListener(null);
    PostAgreeRecord.add(this.b, this.a);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.widget.an
 * JD-Core Version:    0.6.0
 */
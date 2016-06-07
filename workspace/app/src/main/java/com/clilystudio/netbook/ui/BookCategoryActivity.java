package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.design.widget.am;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.TableLayout;
import android.widget.TableRow;
import android.widget.TableRow.LayoutParams;
import android.widget.TextView;
import com.clilystudio.netbook.d;
import com.clilystudio.netbook.model.CategoryRoot.Category;

public class BookCategoryActivity extends BaseActivity
{
  private View a;
  private View b;
  private View c;

  public static Intent a(Context paramContext)
  {
    return new d().a(paramContext, BookCategoryActivity.class).a();
  }

  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 1:
      this.c.setVisibility(0);
      this.a.setVisibility(8);
      this.b.setVisibility(8);
      return;
    case 0:
      this.c.setVisibility(8);
      this.a.setVisibility(0);
      this.b.setVisibility(8);
      return;
    case 2:
    }
    this.c.setVisibility(8);
    this.a.setVisibility(8);
    this.b.setVisibility(0);
  }

  private void a(int paramInt1, int paramInt2, CategoryRoot.Category[] paramArrayOfCategory, boolean paramBoolean)
  {
    int i = 0;
    Object localObject1 = null;
    TableRow.LayoutParams localLayoutParams1 = new TableRow.LayoutParams(-1, -2);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(-1, -2);
    int j = am.b(this, 2130771969);
    int k = 0;
    String str;
    int m;
    TableLayout localTableLayout;
    label84: Object localObject2;
    if (k < paramArrayOfCategory.length)
    {
      CategoryRoot.Category localCategory = paramArrayOfCategory[k];
      str = localCategory.getName();
      m = localCategory.getBookCount();
      if (paramBoolean)
      {
        localTableLayout = (TableLayout)findViewById(2131493094);
        if (k % 3 != 0)
          break label377;
        localObject2 = new TableRow(this);
        localTableLayout.addView((View)localObject2, localLayoutParams1);
      }
    }
    for (int n = i + 1; ; n = i)
    {
      TableRow.LayoutParams localLayoutParams2 = new TableRow.LayoutParams(paramInt1, paramInt2);
      if (n == 1)
        if (k % 3 == 1)
          localLayoutParams2.setMargins(-1, 0, -1, 0);
      while (true)
      {
        LinearLayout localLinearLayout = new LinearLayout(this);
        localLinearLayout.setOrientation(1);
        localLinearLayout.setGravity(17);
        localLinearLayout.setBackgroundResource(j);
        localLinearLayout.setOnClickListener(new aj(this, paramBoolean, str));
        TextView localTextView1 = new TextView(this);
        localTextView1.setText(str);
        localTextView1.setGravity(1);
        localTextView1.setTextAppearance(this, 2131165621);
        localLinearLayout.addView(localTextView1, localLayoutParams);
        TextView localTextView2 = new TextView(this);
        localTextView2.setText(m + " 本");
        localTextView2.setGravity(1);
        localTextView2.setTextAppearance(this, 2131165622);
        localLinearLayout.addView(localTextView2, localLayoutParams);
        ((TableRow)localObject2).addView(localLinearLayout, localLayoutParams2);
        k++;
        i = n;
        localObject1 = localObject2;
        break;
        localTableLayout = (TableLayout)findViewById(2131493095);
        break label84;
        localLayoutParams2.setMargins(0, 0, 0, 0);
        continue;
        if (k % 3 == 1)
        {
          localLayoutParams2.setMargins(-1, -1, -1, 0);
          continue;
        }
        localLayoutParams2.setMargins(0, -1, 0, 0);
      }
      return;
      label377: localObject2 = localObject1;
    }
  }

  private void b()
  {
    a(0);
    new al(this, 0).b(new String[0]);
    new ak(this, 0).b(new String[0]);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903084);
    b(2131034335);
    this.c = findViewById(2131493078);
    this.a = findViewById(2131493081);
    this.b = findViewById(2131493082);
    this.b.setOnClickListener(new ai(this));
    b();
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.BookCategoryActivity
 * JD-Core Version:    0.6.0
 */
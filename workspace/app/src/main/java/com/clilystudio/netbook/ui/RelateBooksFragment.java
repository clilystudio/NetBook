package com.clilystudio.netbook.ui;

import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.TextView;
import butterknife.ButterKnife;
import butterknife.InjectView;
import com.clilystudio.netbook.model.BookSummary;
import com.clilystudio.netbook.model.RelateBookRoot;
import com.clilystudio.netbook.reader.cM;
import com.clilystudio.netbook.reader.cQ;
import com.clilystudio.netbook.util.E;
import com.clilystudio.netbook.util.F;
import com.clilystudio.netbook.widget.CoverView;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class RelateBooksFragment extends Fragment
  implements cQ
{
  private boolean a = false;

  @InjectView(2131493463)
  LinearLayout mBookContainer;

  @InjectView(2131493432)
  TextView mMore;

  @InjectView(2131493462)
  LinearLayout mRelateBookRoot;

  public static RelateBooksFragment a(String paramString)
  {
    RelateBooksFragment localRelateBooksFragment = new RelateBooksFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("book_id", paramString);
    localRelateBooksFragment.setArguments(localBundle);
    return localRelateBooksFragment;
  }

  public final void a(RelateBookRoot paramRelateBookRoot, String[] paramArrayOfString)
  {
    if (getActivity() == null);
    do
      return;
    while ((paramRelateBookRoot == null) || (paramRelateBookRoot.getBooks() == null) || (paramRelateBookRoot.getBooks().isEmpty()));
    this.mRelateBookRoot.setVisibility(0);
    Object localObject;
    label158: int j;
    label259: int n;
    label320: BookSummary localBookSummary1;
    int i1;
    label352: View localView;
    if (this.a)
    {
      List localList = paramRelateBookRoot.getBooks();
      localObject = new ArrayList(20);
      int i2 = paramArrayOfString.length;
      for (int i3 = 0; i3 < i2; i3++)
      {
        String str = paramArrayOfString[i3];
        Iterator localIterator = localList.iterator();
        while (localIterator.hasNext())
        {
          BookSummary localBookSummary2 = (BookSummary)localIterator.next();
          if (!localBookSummary2.getId().equals(str))
            continue;
          ((List)localObject).add(localBookSummary2);
        }
      }
      if (((List)localObject).size() != 0)
      {
        paramRelateBookRoot.setBooks((List)localObject);
        FragmentActivity localFragmentActivity = getActivity();
        DisplayMetrics localDisplayMetrics = new DisplayMetrics();
        ((WindowManager)localFragmentActivity.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
        int i = (int)(localDisplayMetrics.widthPixels - 2.0F * getResources().getDimension(2131099905));
        F localF = new E(getActivity(), i, getResources().getDimension(2131099735)).a();
        if (((List)localObject).size() <= localF.b())
          break label465;
        j = 1;
        if (j != 0)
        {
          this.mMore.setVisibility(0);
          this.mMore.setOnClickListener(new bA(this, paramRelateBookRoot));
          localObject = ((List)localObject).subList(0, localF.b());
        }
        int k = ((List)localObject).size();
        int m = (int)localF.a();
        n = 0;
        if (n < k)
        {
          localBookSummary1 = (BookSummary)((List)localObject).get(n);
          if (n == k - 1)
            break label471;
          i1 = 1;
          localView = getLayoutInflater(null).inflate(2130903379, this.mBookContainer, false);
          if (i1 == 0)
            break label477;
          localView.setPadding(0, 0, m, 0);
        }
      }
    }
    while (true)
    {
      RelateBooksFragment.ViewHolder localViewHolder = new RelateBooksFragment.ViewHolder(this, localView);
      localViewHolder.mTitle.setText(localBookSummary1.getTitle());
      localViewHolder.mBook.setImageUrl(localBookSummary1.getFullCoverLarge(), 2130837766);
      localViewHolder.mContainer.setOnClickListener(new bB(this, localBookSummary1));
      this.mBookContainer.addView(localView);
      n++;
      break label320;
      break;
      localObject = paramRelateBookRoot.getBooks();
      break label158;
      label465: j = 0;
      break label259;
      label471: i1 = 0;
      break label352;
      label477: localView.setPadding(0, 0, 0, 0);
    }
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903217, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ButterKnife.inject(this, getView());
    this.a = new cM(getActivity(), this).a(getArguments().getString("book_id"));
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.RelateBooksFragment
 * JD-Core Version:    0.6.0
 */
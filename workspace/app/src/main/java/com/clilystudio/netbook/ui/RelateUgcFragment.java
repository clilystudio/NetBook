package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateUgcFragment extends Fragment
{

  @InjectView(2131493464)
  LinearLayout mRelateUgcRoot;

  @InjectView(2131493465)
  LinearLayout mUgcContainer;

  public static RelateUgcFragment a(String paramString)
  {
    RelateUgcFragment localRelateUgcFragment = new RelateUgcFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("book_id", paramString);
    localRelateUgcFragment.setArguments(localBundle);
    return localRelateUgcFragment;
  }

  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903218, paramViewGroup, false);
  }

  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    ButterKnife.inject(this, getView());
    RelateUgcFragment.GetUgcsTask localGetUgcsTask = new RelateUgcFragment.GetUgcsTask(this);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = getArguments().getString("book_id");
    localGetUgcsTask.b(arrayOfString);
  }
}

/* Location:           E:\Progs\Dev\Android\Decompile\apktool\zssq\zssq-dex2jar.jar
 * Qualified Name:     com.clilystudio.netbook.ui.RelateUgcFragment
 * JD-Core Version:    0.6.0
 */
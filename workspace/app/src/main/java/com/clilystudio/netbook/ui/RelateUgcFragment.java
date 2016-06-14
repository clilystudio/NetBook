package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateUgcFragment extends Fragment {
    @InjectView(value = 2131493464)
    LinearLayout mRelateUgcRoot;
    @InjectView(value = 2131493465)
    LinearLayout mUgcContainer;

    public static RelateUgcFragment a(String string) {
        RelateUgcFragment relateUgcFragment = new RelateUgcFragment();
        Bundle bundle = new Bundle();
        bundle.putString("book_id", string);
        relateUgcFragment.setArguments(bundle);
        return relateUgcFragment;
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        return layoutInflater.inflate(2130903218, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        ButterKnife.inject((Object) this, this.getView());
        RelateUgcFragment$GetUgcsTask relateUgcFragment$GetUgcsTask = new RelateUgcFragment$GetUgcsTask(this);
        String[] arrstring = new String[]{this.getArguments().getString("book_id")};
        relateUgcFragment$GetUgcsTask.b(arrstring);
    }
}

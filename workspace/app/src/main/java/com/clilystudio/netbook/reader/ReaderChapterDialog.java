package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListView;
import android.widget.TextView;

public class ReaderChapterDialog extends DialogFragment
        implements AdapterView.OnItemClickListener {
    private br a;
    private TextView b;

    public void onCreate(Bundle paramBundle) {
        super.onCreate(paramBundle);
        setStyle(1, 2131165394);
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        View localView = paramLayoutInflater.inflate(2130903186, paramViewGroup, false);
        ListView localListView = (ListView) localView.findViewById(2131493384);
        this.b = ((TextView) localView.findViewById(2131493383));
        this.a = new br(this, getActivity().getLayoutInflater());
        localListView.setOnItemClickListener(this);
        localListView.setAdapter(this.a);
        return localView;
    }

    public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong) {
    }

    public void onResume() {
        super.onResume();
        this.a.notifyDataSetChanged();
    }

    public void onStart() {
        super.onStart();
        dismissAllowingStateLoss();
    }
}


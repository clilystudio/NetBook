package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView$OnItemClickListener;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class ReaderChapterDialog extends DialogFragment implements AdapterView$OnItemClickListener {

    private br a;
    private TextView b;

    static String a(ReaderChapterDialog ReaderChapterDialog1) {
        return null;
    }

    public void onCreate(Bundle Bundle1) {
        super.onCreate(Bundle1);
        setStyle(1, 2131165394);
    }

    public View onCreateView(LayoutInflater LayoutInflater1, ViewGroup ViewGroup2, Bundle Bundle3) {
        View View4 = LayoutInflater1.inflate(2130903186, ViewGroup2, false);
        ListView ListView5 = (ListView) View4.findViewById(2131493384);

        b = (TextView) View4.findViewById(2131493383);
        a = new br(this, getActivity().getLayoutInflater());
        ListView5.setOnItemClickListener(this);
        ListView5.setAdapter((ListAdapter) a);
        return View4;
    }

    public void onItemClick(AdapterView AdapterView1, View View2, int int3, long long4) {
    }

    public void onResume() {
        super.onResume();
        a.notifyDataSetChanged();
    }

    public void onStart() {
        super.onStart();
        dismissAllowingStateLoss();
    }
}

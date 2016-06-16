package com.clilystudio.netbook.reader;

import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.TextView;

public class ReaderChapterDialog extends DialogFragment implements AdapterView.OnItemClickListener {
    private br a;
    private TextView b;

    static /* synthetic */ String a(ReaderChapterDialog readerChapterDialog) {
        return null;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setStyle(1, R.style.Dialog);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.dialog_chapter, viewGroup, false);
        ListView listView = (ListView) view.findViewById(R.id.dialog_chapter_list);
        this.b = (TextView) view.findViewById(R.id.dialog_chapter_title);
        this.a = new br(this, this.getActivity().getLayoutInflater());
        listView.setOnItemClickListener(this);
        listView.setAdapter((ListAdapter) ((Object) this.a));
        return view;
    }

    @Override
    public void onItemClick(AdapterView<?> adapterView, View view, int n, long l) {
    }

    @Override
    public void onResume() {
        super.onResume();
        this.a.notifyDataSetChanged();
    }

    @Override
    public void onStart() {
        super.onStart();
        this.dismissAllowingStateLoss();
    }
}

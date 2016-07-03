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

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.ChapterLink;
import com.clilystudio.netbook.model.MixChapterResource;
import com.clilystudio.netbook.util.W;

public class ReaderChapterDialog extends DialogFragment implements AdapterView.OnItemClickListener {
    private W<MixChapterResource> a;

    static /* synthetic */ String a() {
        return null;
    }

    @Override
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        this.setStyle(DialogFragment.STYLE_NO_TITLE, R.style.Dialog);
    }

    @Override
    public View onCreateView(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view = layoutInflater.inflate(R.layout.dialog_chapter, viewGroup, false);
        ListView listView = (ListView) view.findViewById(R.id.dialog_chapter_list);
        this.a = new W<MixChapterResource>(this.getActivity().getLayoutInflater(), R.layout.list_item_chapter){

            @Override
            protected void a(int var1, MixChapterResource mixChapterResource) {
                 ChapterLink chapterLink = mixChapterResource.getChapter();
                if (chapterLink == null) return;
                this.a(0, mixChapterResource.getHost());
                this.a(1, true);
            }

            @Override
            protected int[] a() {
                return new int[]{R.id.list_item_reader_chapter_site, R.id.list_item_reader_chapter_select};
            }
        };
        listView.setOnItemClickListener(this);
        listView.setAdapter(this.a);
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

package com.clilystudio.netbook.ui;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.ui.ugcbook.UGCDetailActivity;
import com.clilystudio.netbook.widget.CoverView;

public class RelateUgcFragment extends Fragment {
    LinearLayout mRelateUgcRoot;
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
        return layoutInflater.inflate(R.layout.fragment_relate_ugcs, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mUgcContainer = (LinearLayout) this.getView().findViewById(R.id.ugcs);
        this.mRelateUgcRoot = (LinearLayout) this.getView().findViewById(R.id.relate_ugc_root);
        GetUgcsTask relateUgcFragment$GetUgcsTask = new GetUgcsTask(this);
        String[] arrstring = new String[]{this.getArguments().getString("book_id")};
        relateUgcFragment$GetUgcsTask.b(arrstring);
    }
    public final class GetUgcsTask extends com.clilystudio.netbook.a_pack.e<String, Void, RecommendUgcRoot> {
        final /* synthetic */ RelateUgcFragment a;
        private String b;

        public GetUgcsTask(RelateUgcFragment relateUgcFragment) {
            this.a = relateUgcFragment;
            this.b = "\u5171%1$d\u672c\u4e66  |  %2$d\u4eba\u6536\u85cf";
        }

        @Override
        protected final /* synthetic */ RecommendUgcRoot doInBackground(String[] arrstring) {
            com.clilystudio.netbook.api.b.a();
            return com.clilystudio.netbook.api.b.b().i(arrstring[0], 3);
        }

        @Override
        protected final /* synthetic */ void onPostExecute(RecommendUgcRoot recommendUgcRoot) {
            super.onPostExecute(recommendUgcRoot);
            if (this.a.getActivity() != null && recommendUgcRoot != null && recommendUgcRoot.getBooklists() != null && recommendUgcRoot.getBooklists().length > 0) {
                this.a.mRelateUgcRoot.setVisibility(View.VISIBLE);
                for (final RecommendUgcRoot.RecommendUGC recommendUGC : recommendUgcRoot.getBooklists()) {
                    View view = this.a.getLayoutInflater(null).inflate(R.layout.list_item_ugc_book, this.a.mUgcContainer, false);
                    GetUgcsTask.ViewHolder viewHolder = new GetUgcsTask.ViewHolder(view);
                    viewHolder.mCover.setImageUrl(recommendUGC.getFullCover(), R.drawable.cover_default);
                    viewHolder.mTitle.setText(recommendUGC.getTitle());
                    TextView textView = viewHolder.mCount;
                    String string = this.b;
                    Object[] arrobject = new Object[]{recommendUGC.getBookCount(), recommendUGC.getCollectorCount()};
                    textView.setText(String.format(string, arrobject));
                    viewHolder.mAuthor.setText(recommendUGC.getAuthor());
                    viewHolder.mDesc.setText(recommendUGC.getDesc());
                    viewHolder.mContainer.setOnClickListener(new View.OnClickListener() {
                        @Override
                        public void onClick(View v) {
                            Intent intent = new Intent(GetUgcsTask.this.a.getActivity(), UGCDetailActivity.class);
                            intent.putExtra("book_id", recommendUGC.getId());
                            GetUgcsTask.this.a.startActivity(intent);
                        }
                    });
                    this.a.mUgcContainer.addView(view);
                }
            }
        }
        public class ViewHolder {
            TextView mAuthor;
            View mContainer;
            TextView mCount;
            CoverView mCover;
            TextView mDesc;
            TextView mTitle;
            TextView mUpdated;

            ViewHolder(View view) {
                this.mCover = (CoverView) view.findViewById(R.id.cover);
                this.mTitle = (TextView)view. findViewById(R.id.title);
                this.mCount = (TextView) view.findViewById(R.id.message_count);
                this.mAuthor = (TextView) view.findViewById(R.id.author);
                this.mDesc = (TextView) view.findViewById(R.id.desc);
                this.mUpdated = (TextView) view.findViewById(R.id.updated);
                this.mContainer = view.findViewById(R.id.container);
            }
        }
    }
}

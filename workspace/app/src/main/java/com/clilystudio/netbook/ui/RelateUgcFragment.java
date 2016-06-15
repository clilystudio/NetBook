package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

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
        return layoutInflater.inflate(2130903218, viewGroup, false);
    }

    @Override
    public void onViewCreated(View view, Bundle bundle) {
        super.onViewCreated(view, bundle);
        this.mUgcContainer = (LinearLayout) this.getView().findViewById(2131493465);
        this.mRelateUgcRoot = (LinearLayout) this.getView().findViewById(2131493464);
        RelateUgcFragment$GetUgcsTask relateUgcFragment$GetUgcsTask = new RelateUgcFragment$GetUgcsTask(this);
        String[] arrstring = new String[]{this.getArguments().getString("book_id")};
        relateUgcFragment$GetUgcsTask.b(arrstring);
    }
    public final class RelateUgcFragment$GetUgcsTask extends com.clilystudio.netbook.a_pack.e<String, Void, RecommendUgcRoot> {
        final /* synthetic */ RelateUgcFragment a;
        private String b;

        public RelateUgcFragment$GetUgcsTask(RelateUgcFragment relateUgcFragment) {
            this.a = relateUgcFragment;
            this.b = "\u5171%1$d\u672c\u4e66  |  %2$d\u4eba\u6536\u85cf";
        }

        private static /* varargs */ RecommendUgcRoot a(String... arrstring) {
            try {
                b.a();
                RecommendUgcRoot recommendUgcRoot = b.b().i(arrstring[0], 3);
                return recommendUgcRoot;
            } catch (Exception var1_2) {
                var1_2.printStackTrace();
                return null;
            }
        }

        @Override
        protected final /* synthetic */ RecommendUgcRoot doInBackground(String[] arrobject) {
            return RelateUgcFragment$GetUgcsTask.a((String[]) arrobject);
        }

        @Override
        protected final /* synthetic */ void onPostExecute(Object object) {
            RecommendUgcRoot recommendUgcRoot = (RecommendUgcRoot) object;
            super.onPostExecute(recommendUgcRoot);
            if (this.a.getActivity() != null && recommendUgcRoot != null && recommendUgcRoot.getBooklists() != null && recommendUgcRoot.getBooklists().length > 0) {
                this.a.mRelateUgcRoot.setVisibility(View.VISIBLE);
                for (RecommendUgcRoot$RecommendUGC recommendUgcRoot$RecommendUGC : recommendUgcRoot.getBooklists()) {
                    View view = this.a.getLayoutInflater(null).inflate(2130903317, (ViewGroup) this.a.mUgcContainer, false);
                    RelateUgcFragment$GetUgcsTask$ViewHolder relateUgcFragment$GetUgcsTask$ViewHolder = new RelateUgcFragment$GetUgcsTask$ViewHolder(this, view);
                    relateUgcFragment$GetUgcsTask$ViewHolder.mCover.setImageUrl(recommendUgcRoot$RecommendUGC.getFullCover(), 2130837766);
                    relateUgcFragment$GetUgcsTask$ViewHolder.mTitle.setText(recommendUgcRoot$RecommendUGC.getTitle());
                    TextView textView = relateUgcFragment$GetUgcsTask$ViewHolder.mCount;
                    String string = this.b;
                    Object[] arrobject = new Object[]{recommendUgcRoot$RecommendUGC.getBookCount(), recommendUgcRoot$RecommendUGC.getCollectorCount()};
                    textView.setText(String.format(string, arrobject));
                    relateUgcFragment$GetUgcsTask$ViewHolder.mAuthor.setText(recommendUgcRoot$RecommendUGC.getAuthor());
                    relateUgcFragment$GetUgcsTask$ViewHolder.mDesc.setText(recommendUgcRoot$RecommendUGC.getDesc());
                    relateUgcFragment$GetUgcsTask$ViewHolder.mContainer.setOnClickListener(new bC(this, recommendUgcRoot$RecommendUGC));
                    this.a.mUgcContainer.addView(view);
                }
            }
        }
        public class RelateUgcFragment$GetUgcsTask$ViewHolder {
            TextView mAuthor;
            View mContainer;
            TextView mCount;
            CoverView mCover;
            TextView mDesc;
            TextView mTitle;
            TextView mUpdated;

            RelateUgcFragment$GetUgcsTask$ViewHolder(RelateUgcFragment.GetUgcsTask getUgcsTask, View view) {
                this.mCover = (CoverView) view.findViewById(2131493604);
                this.mTitle = (TextView)view. findViewById(2131492936);
                this.mCount = (TextView) view.findViewById(2131493239);
                this.mAuthor = (TextView) view.findViewById(2131493317);
                this.mDesc = (TextView) view.findViewById(2131493481);
                this.mUpdated = (TextView) view.findViewById(2131493783);
                this.mContainer = view.findViewById(2131493577);
            }
        }
    }
}

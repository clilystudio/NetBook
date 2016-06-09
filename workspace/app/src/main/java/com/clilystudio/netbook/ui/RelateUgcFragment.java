package com.clilystudio.netbook.ui;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;

import com.clilystudio.netbook.R;
import com.clilystudio.netbook.a_pack.*;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.widget.CoverView;

import butterknife.ButterKnife;
import butterknife.InjectView;

public class RelateUgcFragment extends Fragment {
    LinearLayout mRelateUgcRoot;
    LinearLayout mUgcContainer;

    public static RelateUgcFragment a(String paramString) {
        RelateUgcFragment localRelateUgcFragment = new RelateUgcFragment();
        Bundle localBundle = new Bundle();
        localBundle.putString("book_id", paramString);
        localRelateUgcFragment.setArguments(localBundle);
        return localRelateUgcFragment;
    }

    public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle) {
        return paramLayoutInflater.inflate(2130903218, paramViewGroup, false);
    }

    public void onViewCreated(View paramView, Bundle paramBundle) {
        super.onViewCreated(paramView, paramBundle);
        mRelateUgcRoot = (LinearLayout)paramView.findViewById(R.id.relate_ugc_root);
        mUgcContainer = (LinearLayout)paramView.findViewById(R.id.ugcs);
        RelateUgcFragment.GetUgcsTask localGetUgcsTask = new RelateUgcFragment.GetUgcsTask(this);
        String[] arrayOfString = new String[1];
        arrayOfString[0] = getArguments().getString("book_id");
        localGetUgcsTask.b(arrayOfString);
    }
    public final class GetUgcsTask extends com.clilystudio.netbook.a_pack.e<String, Void, RecommendUgcRoot> {
        private String b = "共%1$d本书  |  %2$d人收藏";

        public GetUgcsTask(RelateUgcFragment paramRelateUgcFragment) {
        }

        private static RecommendUgcRoot a(String[] paramArrayOfString) {
            try {
                b.a();
                RecommendUgcRoot localRecommendUgcRoot = b.b().i(paramArrayOfString[0], 3);
                return localRecommendUgcRoot;
            } catch (Exception localException) {
                localException.printStackTrace();
            }
            return null;
        }
        public class ViewHolder {
            TextView mAuthor;
            View mContainer;
            TextView mCount;
            CoverView mCover;
            TextView mDesc;
            TextView mTitle;
            TextView mUpdated;

            ViewHolder(RelateUgcFragment.GetUgcsTask paramGetUgcsTask, View paramView) {
                mAuthor = (TextView)paramView.findViewById(R.id.author);
                mContainer = (TextView)paramView.findViewById(R.id.container);
                mCount = (TextView)paramView.findViewById(R.id.message_count);
                mCover = (CoverView)paramView.findViewById(R.id.cover);
                mDesc = (TextView)paramView.findViewById(R.id.desc);
                mTitle = (TextView)paramView.findViewById(R.id.title);
                mUpdated = (TextView)paramView.findViewById(R.id.updated);
            }
        }
    }
}


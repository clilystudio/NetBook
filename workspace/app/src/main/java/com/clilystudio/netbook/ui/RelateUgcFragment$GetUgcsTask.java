package com.clilystudio.netbook.ui;

import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;

import com.clilystudio.netbook.a_pack.e;
import com.clilystudio.netbook.model.RecommendUgcRoot;
import com.clilystudio.netbook.model.RecommendUgcRoot$RecommendUGC;

public final class RelateUgcFragment$GetUgcsTask extends e<String, Void, RecommendUgcRoot> {
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
    protected final /* synthetic */ Object doInBackground(Object[] arrobject) {
        return RelateUgcFragment$GetUgcsTask.a((String[]) arrobject);
    }

    @Override
    protected final /* synthetic */ void onPostExecute(Object object) {
        RecommendUgcRoot recommendUgcRoot = (RecommendUgcRoot) object;
        super.onPostExecute(recommendUgcRoot);
        if (this.a.getActivity() != null && recommendUgcRoot != null && recommendUgcRoot.getBooklists() != null && recommendUgcRoot.getBooklists().length > 0) {
            this.a.mRelateUgcRoot.setVisibility(0);
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
}

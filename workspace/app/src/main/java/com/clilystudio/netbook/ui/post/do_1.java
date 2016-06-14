package com.clilystudio.netbook.ui.post;

final class do extends com.clilystudio.netbook.a.e<String, Void, ReviewList>{
private /* synthetic */ ReviewListActivity a;

private do(ReviewListActivity reviewListActivity){
        this.a=reviewListActivity;
        }

    /* synthetic */ do(ReviewListActivity reviewListActivity,byte by){
        this(reviewListActivity);
        }

private /* varargs */ ReviewList a(String...arrstring){
        if(!this.isCancelled()){
        try{
        ReviewListActivity.w(this.a);
        ReviewList reviewList=b.b().a(arrstring[0],arrstring[1],arrstring[2],ReviewListActivity.l(this.a).size(),20,ReviewListActivity.p(this.a));
        return reviewList;
        }
        catch(Exception var2_3){
        var2_3.printStackTrace();
        }
        }
        return null;
        }

@Override
protected final /* synthetic */ Object doInBackground(Object[]arrobject){
        return this.a((String[])arrobject);
        }

    /*
     * Enabled force condition propagation
     * Lifted jumps to return sites
     */
@Override
protected final /* synthetic */ void onPostExecute(Object object){
        ReviewList reviewList=(ReviewList)object;
        super.onPostExecute(reviewList);
        ReviewListActivity.e(this.a).setVisibility(8);
        ReviewListActivity.r(this.a).setVisibility(8);
        ReviewListActivity.s(this.a).setVisibility(8);
        ReviewListActivity.n(this.a).n();
        if(this.isCancelled())return;
        if(reviewList!=null&&reviewList.getReviews()!=null){
        ReviewSummary[]arrreviewSummary=reviewList.getReviews();
        int n=arrreviewSummary.length;
        if(n>0){
        List<ReviewSummary>list=Arrays.asList(arrreviewSummary);
        ReviewListActivity.l(this.a).addAll(list);
        ReviewListActivity.t(this.a).a(ReviewListActivity.l(this.a));
        if(n<20){
        ReviewListActivity.n(this.a).setOnLastItemVisibleListener(null);
        return;
        }
        ReviewListActivity.n(this.a).setOnLastItemVisibleListener(ReviewListActivity.u(this.a));
        return;
        }
        ReviewListActivity.n(this.a).setOnLastItemVisibleListener(null);
        return;
        }
        e.a((Activity)this.a,"\u52a0\u8f7d\u5931\u8d25\uff0c\u8bf7\u68c0\u67e5\u7f51\u7edc\u6216\u7a0d\u540e\u518d\u8bd5");
        }
        }

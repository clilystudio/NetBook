package com.clilystudio.app.netbook.ui.post;

final class do extends e<String, Void, ReviewList>
{
private do(ReviewListActivity paramReviewListActivity)
        {
        }

private ReviewList a(String[]paramArrayOfString)
        {
        if(!isCancelled())
        try
        {
        ReviewListActivity.w(this.a);
        ReviewList localReviewList=b.b().a(paramArrayOfString[0],paramArrayOfString[1],paramArrayOfString[2],ReviewListActivity.l(this.a).size(),20,ReviewListActivity.p(this.a));
        return localReviewList;
        }
        catch(Exception localException)
        {
        localException.printStackTrace();
        }
        return null;
        }
        }

/* Location:           E:\10.Progs\Dev\Compiler\zssq.jar
 * Qualified Name:     com.clilystudio.app.netbook.ui.post.do
 * JD-Core Version:    0.6.2
 */
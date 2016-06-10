.class final Lcom/ushaqi/zhuishushenqi/ui/post/B;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/B;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 55
    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/B;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/B;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)Lcom/ushaqi/zhuishushenqi/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/a;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/db/BookReadRecord;->getBookId()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->a(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;Ljava/lang/String;)Ljava/lang/String;

    .line 56
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/B;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)Lcom/ushaqi/zhuishushenqi/adapter/a;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/ushaqi/zhuishushenqi/adapter/a;->a(I)V

    .line 57
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/B;->a:Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;

    invoke-static {v0}, Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;->b(Lcom/ushaqi/zhuishushenqi/ui/post/AddReviewActivity;)Lcom/ushaqi/zhuishushenqi/adapter/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ushaqi/zhuishushenqi/adapter/a;->notifyDataSetChanged()V

    .line 58
    return-void
.end method

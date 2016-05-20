.class final Lcom/ushaqi/zhuishushenqi/ui/post/aD;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private synthetic a:Lcom/ushaqi/zhuishushenqi/model/Review;

.field private synthetic b:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;


# direct methods
.method constructor <init>(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V
    .locals 0

    .prologue
    .line 162
    iput-object p1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aD;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iput-object p2, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aD;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aD;->b:Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;

    iget-object v1, p0, Lcom/ushaqi/zhuishushenqi/ui/post/aD;->a:Lcom/ushaqi/zhuishushenqi/model/Review;

    invoke-static {v0, v1}, Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;->a(Lcom/ushaqi/zhuishushenqi/ui/post/BookReviewListFragment;Lcom/ushaqi/zhuishushenqi/model/Review;)V

    .line 166
    return-void
.end method
